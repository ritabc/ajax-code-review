class Product < ApplicationRecord
  has_many :order_items
  validates_presence_of :description
  validates_presence_of :name
  validates_presence_of :price
  validates :price, numericality: { greater_than: 0 }
end
