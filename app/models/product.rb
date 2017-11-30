class Product < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  validates :price, numericality: true,
  format: { with: /\A\d{1,20}(\.\d{0,2})\z/, message: "only allows numbers" }
end
