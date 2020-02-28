FactoryBot.define do
  factory :order do
    customer_name { "MyString" }
    uuid { "MyString" }
    warehouse { Warehouse.first || association(:warehouse) }
  end
end
