FactoryGirl.define do
  factory :state do
    abbr { Faker::Address.state_abbr }
    name { Faker::Address.state }
  end
end