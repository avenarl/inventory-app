require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    subject(:product) { build(:product) }

    # Shoulda matchers test
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:sku) }
    it { is_expected.to validate_uniqueness_of(:sku).case_insensitive }
  end

  # Test cases without shoulda matchers
     # it 'validates the presence of name' do
     #   product.name = nil

     #   expect(product.valid?).to eq(false)
     # end

     # it 'validates the presence of sku' do
     #   product.sku = nil

     #   expect(product.valid?).to eq(false)
     # end

     # it 'validates the uniqueness of sku' do
     #   create(:product, sku: 'PROD-0001')
     #   product.sku = 'PROD-0001'

     #   expect(product.valid?).to eq(false)
     # end
     describe "associations" do
       subject(:product) { create(:product) }

    it { is_expected.to have_many(:stocks) }
    it { is_expected.to have_many(:warehouses) }
    it { is_expected.to have_many(:order_items) }
    it { is_expected.to have_many(:orders) }
 end
end
