FactoryGirl.define do
  factory :product do
    name { Faker::Commerce.product_name }
    barcode { Faker::Number.number(10) }
    price { Faker::Number.number(10) }
  end
end