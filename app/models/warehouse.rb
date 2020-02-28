class Warehouse < ApplicationRecord
  has_many :stocks
  has_many :products, through: :stocks

  validates :street, presence: true
  validates :province, presence: true
  validates :city, presence: true
end
