FactoryGirl.define do
  factory :event do
    name              { Faker::Name.name}
    description       { Faker::Lorem.sentence(40) }
    price             { Faker::Commerce.price }
    includes_food     true
    includes_drinks   true
    active            true
    user              { build(:user) }
    
    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
