FactoryGirl.define do
  factory :address do
    street { Faker::Address.street_address }
    number { Faker::Address.building_number }
    postal_code { Faker::Address.zip_code }
    city
  end
end