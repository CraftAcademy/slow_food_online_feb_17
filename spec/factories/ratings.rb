FactoryGirl.define do
  factory :rating do
    rating 3
    counter 20
    association :restaurant
  end
end
