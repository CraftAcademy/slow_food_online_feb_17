require 'ffaker'

Restaurant.delete_all

5.times do
  name= FFaker::Name.first_name + "'s Restaurant"
  street= FFaker::Address.street_name
  zip_code= FFaker::Address.country_code
  city= FFaker::Address.city
  food_style= FFaker::Food.meat
  description= FFaker::Sport.name

 Restaurant.create(name: name,
                   street: street,
                   zip_code: zip_code,
                   city: city,
                   food_style: food_style,
                   description: description)

  menu = FactoryGirl.create(:menu, restaurant: Restaurant.first)
  FactoryGirl.create(:dish, menu: menu, name: 'Burger')
  FactoryGirl.create(:dish, menu: menu, name: 'Hot dog')

end

puts "Created #{Restaurant.count} restaurants"
