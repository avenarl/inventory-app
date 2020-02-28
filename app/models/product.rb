class Product < ApplicationRecord
  # Always have 1 line per attribute
  validates :name, presence: true
  validates :sku, presence: true, uniqueness: { case_sensitive: false}
end
