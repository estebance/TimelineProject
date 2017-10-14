FactoryGirl.define do
  factory :post do
    title { Faker::Lorem.characters(100)}
    content { Faker::Lorem.characters(100)}
    association :user
  end
end
