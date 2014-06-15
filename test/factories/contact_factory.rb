FactoryGirl.define do
  factory :contact do
    type { %i(email phone mobile).sample }
    value { Faker::PhoneNumber.phone_number }
  end
end