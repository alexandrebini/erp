FactoryGirl.define do
  factory :sale_item do
    sale { build(:sale, sale_items_count: 0) }
    product
    quantity { Faker::Number.number(5) }
  end
end