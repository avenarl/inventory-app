class Product < ApplicationRecord
  has_many :stocks
  has_many :order_items
  has_many :warehouses, through: :stocks
  has_many :orders, through: :order_items

  # Always have 1 line per attribute
  validates :name, presence: true
  validates :sku, presence: true, uniqueness: { case_sensitive: false}
end
