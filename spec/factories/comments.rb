FactoryGirl.define do
  factory :comment do
    content { Faker::Lorem.characters(100) }
    association :post
    association :user
  end
end
