class Product < ApplicationRecord
  belongs_to :category
  validates :name, :url_image, :price, presence: true
end
