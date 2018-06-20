
OrderItem.destroy_all
Order.destroy_all
Item.destroy_all
Bill.destroy_all
Restaurant.destroy_all
User.destroy_all

puts "Creating new database..."

luca = User.create(email: "luca@luca.com", password: "123456")
anna = User.create(email: "anna@anna.com", password: "123456")
xavi = User.create(email: "xavi@xavi.com", password: "123456")
ben = User.create(email: "ben@ben.com", password: "123456")

resto1 = Restaurant.create!(name: "Bella Italia", category: "Italian", user: luca, address: "Via Roma 12")
resto2 = Restaurant.create!(name: "Xavi's place", category: "Spanish", user: xavi, address: "Carrer d'en Grassot, 101")
resto3 = Restaurant.create!(name: "Vive la France", category: "French", user: anna, address: "51 Rue Centrale")

Item.create!(name: "Pizza", price: 10, restaurant: resto1)
Item.create!(name: "Pasta", price: 10, restaurant: resto1)
Item.create!(name: "chicken", price: 10, restaurant: resto1)
Item.create!(name: "steak", price: 10, restaurant: resto1)

Item.create!(name: "Pizza", price: 10, restaurant: resto2)
Item.create!(name: "Pasta", price: 10, restaurant: resto2)
Item.create!(name: "chicken", price: 10, restaurant: resto2)
Item.create!(name: "steak", price: 10, restaurant: resto2)

Item.create!(name: "Pizza", price: 10, restaurant: resto3)
Item.create!(name: "Pasta", price: 10, restaurant: resto3)
Item.create!(name: "chicken", price: 10, restaurant: resto3)
Item.create!(name: "steak", price: 10, restaurant: resto3)

puts "Finished!"

