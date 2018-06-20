
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

Restaurant.create(name: "Bella Italia", category: "Italian", user_id: luca, address: "Via Roma 12")
Restaurant.create(name: "Xavi's place", category: "Spanish", user_id: xavi, address: "Carrer d'en Grassot, 101")
Restaurant.create(name: "Vive la France", category: "French", user_id: anna, address: "51 Rue Centrale")

puts "Finished!"

