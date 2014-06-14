FactoryGirl.define do
  factory :state do
    symbol { Faker::Address.state_abbr }
    name  { Faker::Address.state }
  end
end