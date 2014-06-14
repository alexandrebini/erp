FactoryGirl.define do
  factory :contact do
    symbol { Contact::TYPES.sample }
    value { Faker::Address.building_number }
  end
end