FactoryBot.define do
  factory :season do
    title { Faker::Food.dish }
    plot { Faker::Food.description }
  end
end