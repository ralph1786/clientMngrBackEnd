# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Parent.destroy_all
Child.destroy_all

provider1 = Provider.create(name: "Mariana Rodriguez", username: "mrodriguez", password:"mr123")

parent1 = Parent.create(name: Faker::Name.name, username: Faker::Lorem.word, password:"parent1")
parent2 = Parent.create(name: Faker::Name.name, username: Faker::Lorem.word, password:"parent2")
parent3 = Parent.create(name: Faker::Name.name, username: Faker::Lorem.word, password:"parent3")
parent4 = Parent.create(name: Faker::Name.name, username: Faker::Lorem.word, password:"parent4")
parent5 = Parent.create(name: Faker::Name.name, username: Faker::Lorem.word, password:"parent5")
parent6 = Parent.create(name: Faker::Name.name, username: Faker::Lorem.word, password:"parent6")


child1 = Child.create(name: Faker::Name.male_first_name, image: "https://images.pexels.com/photos/346796/pexels-photo-346796.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", age: 2, address: Faker::Address.street_address, allergies: "none", balance: 0, provider_id: provider1.id, parent_id: parent1.id)
child2 = Child.create(name: Faker::Name.female_first_name, image: "https://images.pexels.com/photos/36483/aroni-arsa-children-little.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", age: 1, address: Faker::Address.street_address, allergies: "none", balance: 0, provider_id: provider1.id, parent_id: parent2.id)
child3 = Child.create(name: Faker::Name.male_first_name, image: "https://images.pexels.com/photos/1104014/pexels-photo-1104014.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", age: 4, address: Faker::Address.street_address, allergies: "peanuts", balance: 300, provider_id: provider1.id, parent_id: parent3.id)
child4 = Child.create(name: Faker::Name.male_first_name, image: "https://images.pexels.com/photos/220574/pexels-photo-220574.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", age: 3, address: Faker::Address.street_address, allergies: "eggs, peanuts", balance: 150, provider_id: provider1.id, parent_id: parent6.id)
child5 = Child.create(name: Faker::Name.female_first_name, image: "https://images.pexels.com/photos/356192/pexels-photo-356192.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", age: 2, address: Faker::Address.street_address, allergies: "lactose", balance: 0, provider_id: provider1.id, parent_id: parent6.id)
child6 = Child.create(name: Faker::Name.female_first_name, image: "https://images.pexels.com/photos/459976/pexels-photo-459976.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", age: 1, address: Faker::Address.street_address, allergies: "shrimp", balance: 400, provider_id: provider1.id, parent_id: parent4.id)
child7 = Child.create(name: Faker::Name.male_first_name, image: "https://images.pexels.com/photos/39369/baby-teddy-bear-cute-39369.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", age: 1, address: Faker::Address.street_address, allergies: "none", balance: 0, provider_id: provider1.id, parent_id: parent5.id)
child8 = Child.create(name: Faker::Name.female_first_name, image: "https://images.pexels.com/photos/1912868/pexels-photo-1912868.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", age: 3, address: Faker::Address.street_address, allergies: "eggs", balance: 100, provider_id: provider1.id, parent_id: parent5.id)
child9 = Child.create(name: Faker::Name.male_first_name, image: "https://images.pexels.com/photos/1416736/pexels-photo-1416736.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", age: 5, address: Faker::Address.street_address, allergies: "none", balance: 175, provider_id: provider1.id, parent_id: parent5.id)
child10 = Child.create(name: Faker::Name.female_first_name, image: "https://images.pexels.com/photos/12165/nature-people-girl-forest-12165.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", age: 7, address: Faker::Address.street_address, allergies: "none", balance: 325, provider_id: provider1.id, parent_id: parent2.id)
child11 = Child.create(name: Faker::Name.female_first_name, image: "https://images.pexels.com/photos/189857/pexels-photo-189857.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", age: 3, address: Faker::Address.street_address, allergies: "tree nuts", balance: 0, provider_id: provider1.id, parent_id: parent3.id)
child12 = Child.create(name: Faker::Name.male_first_name, image: "https://images.pexels.com/photos/789786/pexels-photo-789786.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", age: 1, address: Faker::Address.street_address, allergies: "none", balance: 75, provider_id: provider1.id, parent_id: parent4.id)
child13 = Child.create(name: Faker::Name.male_first_name, image: "https://images.pexels.com/photos/1598122/pexels-photo-1598122.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", age: 2, address: Faker::Address.street_address, allergies: "shrimp", balance: 0, provider_id: provider1.id, parent_id: parent4.id)


