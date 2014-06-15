FactoryGirl.define do
  factory :taxpayer do
    type { %w(rg cpf cnpj ie).sample }
    value { Faker::Number.number(10) }
  end
end
