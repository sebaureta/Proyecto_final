class Product < ApplicationRecord

  has_many :orders, dependent: :delete_all
  has_many :users, through: :orders
  has_one_attached :image
end
