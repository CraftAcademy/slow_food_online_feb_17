FactoryGirl.define do
  factory :dish do
    name "Pizza"
    price 9.99
    description "About"
    association :menu
    category "Main course"
  end
end
