# model products
class Product < ApplicationRecord
  # pages per filter
#  paginates_per 12
  has_many :orders, dependent: :delete_all
  has_many :users, through: :orders

  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories, dependent: :destroy

  has_one_attached :image

  after_create :save_categories

#Custom Setter
  def categories=(value)
    @categories = value
  end

  def save_categories
    @categories.each do |category_id|
      ProductCategory.create(category_id: category_id, product_id: self.id)
    end
  end

  def self.search(search)
    if search
      where('lower(name) LIKE ?', "%#{search}%")
    end
  end
end
