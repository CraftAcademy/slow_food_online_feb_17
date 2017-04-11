require 'ffaker'

Restaurant.delete_all

5.times do
  name= FFaker::Name.first_name + "'s Restaurant"
  street= FFaker::Address.street_name
  zip_code= FFaker::Address.country_code
  city= FFaker::Address.city
  food_style= FFaker::Food.meat
  description= FFaker::Sport.name

 restaurant = Restaurant.create(name: name,
                   street: street,
                   zip_code: zip_code,
                   city: city,
                   food_style: food_style,
                   description: description)

  menu = Menu.create(name: "Kebabs", restaurant: restaurant)
  Dish.create(name: "Kebabrulle", price: 9.99, description: "Awesome kebabrulle", category: "Main course", menu: menu)

end

puts "Created #{Restaurant.count} restaurants"
puts "Created #{Menu.count} menus"
puts "Created #{Dish.count} dishes"
