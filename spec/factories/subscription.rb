FactoryBot.define do
  factory :subscription do
    association :user, factory: :user
    association :subscribable, factory: :movie
  end
end