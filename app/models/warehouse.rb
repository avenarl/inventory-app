class Warehouse < ApplicationRecord
  validates :street, presence: true
  validates :province, presence: true
  validates :city, presence: true
end
