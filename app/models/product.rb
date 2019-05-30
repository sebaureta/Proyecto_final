# model products
class Product < ApplicationRecord
  # pages per filter
  paginates_per 12
  has_many :orders, dependent: :delete_all
  has_many :users, through: :orders

  has_many :product_categories
  has_many :categories, through: :product_categories

  has_one_attached :image
end
