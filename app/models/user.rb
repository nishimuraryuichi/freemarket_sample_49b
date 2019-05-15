class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile
  has_many :products
  validates :password, presence: true, length: {minimum:6}, confirmation: true
  validates :nickname ,presence: true, length: {maximum: 30}

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
