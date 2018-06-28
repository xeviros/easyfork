
OrderItem.destroy_all
Order.destroy_all
Item.destroy_all
Bill.destroy_all
Restaurant.destroy_all
User.destroy_all

puts "Creating new database..."

luca = User.create(email: "luca@luca.com", password: "123456", first_name: "Luca", last_name: "De Montis")
anna = User.create(email: "anna@anna.com", password: "123456", first_name: "Anna", last_name: "Bendahan")
xavi = User.create(email: "xavi@xavi.com", password: "123456", first_name: "Xavi", last_name: "Ros")
ben = User.create(email: "ben@ben.com", password: "123456", first_name: "Ben", last_name: "De Boissieu")


# photo: 'app/assets/images/Japanese/ramen-main.jpg'



ramenbcn = Restaurant.create!(name: "Ramen BCN", address: "Calle Girona, 108, Barcelona", category: "Japanse", user: ben, opening_time: "13:00", closing_time: "00:00", popularity: 4.3 )
Item.create!(category: "starters", name: "Fried Tofu with soja sauce", price: 4, restaurant: ramenbcn)
Item.create!(category: "starters", name: "Seaweed Salad", price: 3.50, restaurant: ramenbcn)
Item.create!(category: "starters", name: "Salmon Tatar", price: 8.95, restaurant: ramenbcn)

Item.create!(category: "mains", name: "White rice", price: 2.95, restaurant: ramenbcn)
Item.create!(category: "mains", name: "Fried chicken with rice and curry sauce", price: 8.90, restaurant: ramenbcn)
Item.create!(category: "mains", name: "Komeko Miso Ramen", description:"Rice noodles with miso sauce and toppings", price: 8.90, restaurant: ramenbcn)
Item.create!(category: "desserts", name: "Vanilla ice cream & cookies", price: 3.60, restaurant: ramenbcn)
Item.create!(category: "desserts", name: "Cake Doreamon", price: 3.10, restaurant: ramenbcn)
Item.create!(category: "drinks", name: "Water", price: 1.75, restaurant: ramenbcn)
Item.create!(category: "drinks", name: "Wine", price: 8, restaurant: ramenbcn)
Item.create!(category: "drinks", name: "Cafe", price: 1.30, restaurant: ramenbcn)
Item.create!(category: "drinks", name: "Heineken", price: 2, restaurant: ramenbcn)



tipicicatala = Restaurant.create!(name: "Típic i Català", address: "Carrer Sicília, 217, Barcelona", category: "Catalan", user: xavi, opening_time: "13:00", closing_time: "00:00", popularity: 3.9 )
Item.create!(category: "starters", name: "Snails of sea in brine", price: 5, restaurant: tipicicatala)
Item.create!(category: "starters", name: "Mussels in pickled sauce", price: 5, restaurant: tipicicatala)
Item.create!(category: "starters", name: "Olives arbequines", price: 2, restaurant: tipicicatala)

Item.create!(category: "mains", name: "Gazpacho", price: 4, restaurant: tipicicatala)
Item.create!(category: "mains", name: "Peas with mint", price: 4, restaurant: tipicicatala)
Item.create!(category: "mains", name: "Chicken broth", price: 4, restaurant: tipicicatala)
Item.create!(category: "mains", name: "Catalan Serrano Ham", price: 6, restaurant: tipicicatala)
Item.create!(category: "mains", name: "Porc shank in the oven", price: 10, restaurant: tipicicatala)
Item.create!(category: "desserts", name: "Crema catalana", price: 5.50, restaurant: tipicicatala)
Item.create!(category: "desserts", name: "Yogurt", price: 3.60, restaurant: tipicicatala)


nuvol = Restaurant.create!(name: "Núvol", address: "Carrer de Sant Antoni Maria Claret, 92,Barcelona", category: "Spanish", user: anna, opening_time: "7:00", closing_time: "21:00", popularity: 4.2)
Item.create!(category: "starters", name: "Hummus", description: "Hummus with row vegetables and slices of toasted bread", price: 5.50, restaurant: nuvol)
Item.create!(category: "starters", name: "Nachos", description: "Nachos with Guacamole and pico de gallo with cream cheese cashew", price: 6.25, restaurant: nuvol)
Item.create!(category: "starters", name: "Patatas bravas and homemade allioli", price: 4.10, restaurant: nuvol)

Item.create!(category: "mains", name: "Alma salad", description: "Green leaves, red cabbage, carrots, beets, tomatoes, celery pate and pipes", price: 9.95, restaurant: nuvol)
Item.create!(category: "mains", name: "Burger Sol", description: "Seitan, caramelized onion, tomato, lettuce, pickles, carrots", price: 7.95, restaurant: nuvol)
Item.create!(category: "mains", name: "Luna Burger menu", description:"Menu with potatoes, drink and dessert", price: 10.95, restaurant: nuvol)


resto1 = Restaurant.create!(name: "Bella Italia", address: "Carrer Arago 390, Barcelona", category: "Italian", user: luca, popularity: 3, opening_time: "10:30", closing_time: "19:30")
resto2 = Restaurant.create!(name: "Xavi's place", address: "Carrer Casanova 20, Barcelona", category: "Spanish", user: xavi, popularity: 1, opening_time: "10:30", closing_time: "19:30")
resto3 = Restaurant.create!(name: "Vive la France", address: "Carrer d'en Grassot 101, Barcelona", category: "French", user: anna, popularity: 2, opening_time: "10:30", closing_time: "19:30")

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

