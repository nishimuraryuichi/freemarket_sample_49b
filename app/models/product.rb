class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :parent_category, :status, :delivery_fee, :preparation
end
