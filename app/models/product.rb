class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :parent_category
  belongs_to_active_hash :status
  belongs_to_active_hash :delivery_fee
  belongs_to_active_hash :preparation
  belongs_to_active_hash :prefecture
  has_many_attached :images

  belongs_to :user
end
