class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :parent_category
  belongs_to_active_hash :status
  belongs_to_active_hash :delivery_fee
  belongs_to_active_hash :preparation
  belongs_to_active_hash :prefecture
  has_many_attached :images

  belongs_to :user
  validates :images, presence: {message: "画像を添付してください"}
  validates :name, presence: {message: "商品名を入力してください"}, length: {maximum:40,message: "商品名は40文字以内です。"}
  validates :detail, presence: {message: "商品の説明を入力してください"}
  validates :parent_category_id, numericality:{only_integer: true, greater_than: 0, message: "カテゴリーを選択してください"}
  validates :status_id, numericality:{only_integer: true, greater_than: 0, message: "商品の状態を指定してください"}
  validates :delivery_fee_id, numericality:{only_integer: true, greater_than: 0, message: "配送料の負担について教えてください"}
  validates :prefecture_id, numericality:{only_integer: true, greater_than: 0, message: "都道府県を選択してください"}
  validates :preparation_id, numericality:{only_integer: true, greater_than: 0, message: "発送までの日数を教えてください"}
  validates :price, numericality:{only_integer: true, greater_than_or_equal_to: 300,less_than: 10000000, message: "価格は300~9,999,999円の間で設定してください"}
end
