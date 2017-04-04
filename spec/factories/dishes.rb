FactoryGirl.define do
  factory :dish do
    name "Pizza"
    price 9.99
    description "About"
    association :menu
  end
end
