class Profile < ApplicationRecord
  belongs_to :user,optional: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  has_many :products
end
