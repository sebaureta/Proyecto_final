class Product < ApplicationRecord
  paginates_per 12
  has_many :orders, dependent: :delete_all
  has_many :users, through: :orders
  has_one_attached :image
end
