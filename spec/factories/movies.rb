FactoryBot.define do
  factory :movie do
    title { Faker::Movie.quote }
    plot { Faker::ChuckNorris.fact }
  end
end