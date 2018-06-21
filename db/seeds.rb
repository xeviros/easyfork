
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

resto1 = Restaurant.create!(name: "Bella Italia", category: "Italian", user: luca)
resto2 = Restaurant.create!(name: "Xavi's place", category: "Spanish", user: xavi)
resto3 = Restaurant.create!(name: "Vive la France", category: "French", user: anna)

Item.create!(category: "mains", name: "Pizza", description: "Pizza woodden cooked", price: 9, restaurant: resto1)
Item.create!(category: "mains", name: "Pasta", description: "Pasta with cream and tomatos", price: 12, restaurant: resto2)
Item.create!(category: "mains", name: "chicken", price: 15, restaurant: resto3)
Item.create!(category: "mains", name: "steak", price: 10, restaurant: resto1)

Item.create!(category: "drinks", name: "juice", price: 10, restaurant: resto1)
Item.create!(category: "drinks", name: "cappiccino", price: 10, restaurant: resto2)
Item.create!(category: "drinks", name: "avocado", price: 10, restaurant: resto3)
Item.create!(category: "drinks", name: "vegan mojito", price: 10, restaurant: resto2)

Item.create!(category: "desserts", name: "Chocolat cake", price: 13, restaurant: resto1)
Item.create!(category: "desserts", name: "Creme brule", price: 10, restaurant: resto2)
Item.create!(category: "desserts", name: "Icecrean", description: "lemon, mint, vanilla", price: 10, restaurant: resto3)
Item.create!(category: "desserts", name: "Fruits", price: 10, restaurant: resto3)

puts "Finished!"

