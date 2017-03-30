FactoryGirl.define do
  factory :menu do
    name "MyString"
    association :restaurant
  end
end
