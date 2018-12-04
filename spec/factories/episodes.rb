FactoryBot.define do
	factory :episode do
		title { Faker::StarWars.character }
		plot { Faker::StarWars.character }
		sequence_number { 1 }
		season_id { nil }
	end
end