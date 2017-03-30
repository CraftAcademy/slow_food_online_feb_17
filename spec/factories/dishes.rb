FactoryGirl.define do
  factory :dish do
    name "MyString"
    price "9.99"
    association :menu
  end
end
