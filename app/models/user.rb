class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
  has_one :profile
  has_many :products
  validates :password, presence: true, length: {minimum:6}, confirmation: true
  validates :nickname ,presence: true, length: {maximum: 30}


    #facebookに登録があるメソッドが以下
  def self.from_omniauth(auth)
    uid = auth.uid
    provider = auth.provider
    snscredential = SnsCredential.find_by(uid: uid, provider: provider) 
    #すでにデータベースに該当のuid,providerが存在している facebook認証をしている
    if snscredential.present? #facebook認証済みで、該当uid＆providerが存在するとき
      user = User.find_by(id: snscredential.user_id)
        unless user.present? #紐づくユーザーがいない限りにおいて以下を追加して
          user = User.new(   #そんなことは起こらないけど
            nickname: auth.info.name,
            email: auth.info.email
          )
          end 
      sns = snscredential 
    else #facebook認証がまだの場合。
      user = User.find_by(email: auth.info.email) 
        if user.present? #メルカリに登録済みだけど,facebook認証がまだ。
          sns = SnsCredential.new(
            uid: uid,
            provider: provider,
            user_id: user.id
          )
        else #メルカリに登録していない
          user = User.new(
            nickname: auth.info.name,
            email: auth.info.email
          )
          sns = SnsCredential.create(
            uid: uid,
            provider: provider
          )
        end
    end    
    return {user: user, sns_id: sns.id}
  end

  


  def card_number_last4
    if card_num = MyPayjp.default_card_num?(self.id.to_s)
      customer=Payjp::Customer.retrieve(self.id.to_s)
      customer.cards.retrieve(card_num).last4
    else
      return false
    end
  end


  def card_registered?
    if card_num = MyPayjp.default_card_num?(self.id.to_s)
      return true
    else
      return false
    end
  end

end
