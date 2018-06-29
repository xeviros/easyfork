
OrderItem.destroy_all
Image.destroy_all
Review.destroy_all
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
image_src = File.join(Rails.root, "/app/assets/images/Japanese/ramen-main.jpg")
src_file = File.new(image_src)
ramenbcn.photo = src_file
ramenbcn.save

# Item.create!(category: "starters", name: "Fried Tofu with soja sauce", price: 4, restaurant: ramenbcn)
# Item.create!(category: "starters", name: "Seaweed Salad", price: 3.50, restaurant: ramenbcn)
# Item.create!(category: "starters", name: "Salmon Tatar", price: 8.95, restaurant: ramenbcn)

# Item.create!(category: "mains", name: "White rice", price: 2.95, restaurant: ramenbcn)
# Item.create!(category: "mains", name: "Fried chicken with rice and curry sauce", price: 8.90, restaurant: ramenbcn)
# Item.create!(category: "mains", name: "Komeko Miso Ramen", description:"Rice noodles with miso sauce and toppings", price: 8.90, restaurant: ramenbcn)
# Item.create!(category: "desserts", name: "Vanilla ice cream & cookies", price: 3.60, restaurant: ramenbcn)
# Item.create!(category: "desserts", name: "Cake Doreamon", price: 3.10, restaurant: ramenbcn)
# Item.create!(category: "drinks", name: "Water", price: 1.75, restaurant: ramenbcn)
# Item.create!(category: "drinks", name: "Wine", price: 8, restaurant: ramenbcn)
# Item.create!(category: "drinks", name: "Cafe", price: 1.30, restaurant: ramenbcn)
# Item.create!(category: "drinks", name: "Heineken", price: 2, restaurant: ramenbcn)


komakishushi = Restaurant.create!(name: "Komaki Sushi", address: "Carrer de Còrsega, 416, 08037, Barcelona", category: "Japanese", user: xavi, opening_time: "12:00", closing_time: "22:00", popularity: 3.3 )



image_src = File.join(Rails.root, "/app/assets/images/Japanese/sushi.jpg")
src_file = File.new(image_src)
komakishushi.photo = src_file
komakishushi.save

# Item.create!(category: "starters", name: "Sopa de Miso Tofu con Cebolleta", price: 3.10, restaurant: komakishushi)
# Item.create!(category: "starters", name: "Ensalada con mixto de algas con salsa de Miso", price: 7.10, restaurant: komakishushi)
# Item.create!(category: "starters", name: "Arroz blanco", price: 1.85, restaurant: komakishushi)

# Item.create!(category: "mains", name: "Sake Uramaki (salmón, aguacate, mayonesa, sésamo blanco/negro) ", price: 7.65, restaurant: komakishushi)
# Item.create!(category: "mains", name: "Arroz frito con verduras, gambas, calamares y aceite de sesamo", price: 8.10, restaurant: komakishushi)
# Item.create!(category: "mains", name: "Yakisoba (fideos con verduras, shitake, pollo con salsa japonesa y katsuobushi", description:"Rice noodles with miso sauce and toppings", price: 7.80, restaurant: komakishushi)
# Item.create!(category: "desserts", name: "Pastel de queso con frutos del bosque", price: 4.75, restaurant: komakishushi)
# Item.create!(category: "desserts", name: "Trufas japonesas de té verde, sake y cava", price: 4.70, restaurant: komakishushi)
# Item.create!(category: "drinks", name: "Water", price: 1.75, restaurant: komakishushi)
# Item.create!(category: "drinks", name: "Wine", price: 8, restaurant: komakishushi)
# Item.create!(category: "drinks", name: "Cafe", price: 1.30, restaurant: komakishushi)
# Item.create!(category: "drinks", name: "Heineken", price: 2, restaurant: komakishushi)


lokalbar = Restaurant.create!(name: "LOKAL BAR", address: "Calle Bruc, 118, Barcelona", category: "Spanish", user: xavi, opening_time: "11:00", closing_time: "22:00", popularity: 4 )



image_src = File.join(Rails.root, "/app/assets/images/tapas.jpg")
src_file = File.new(image_src)
lokalbar.photo = src_file
lokalbar.save

# Item.create!(category: "starters", name: "Gazpacho", price: 4.90, restaurant: lokalbar)
# Item.create!(category: "starters", name: "Patatas Bravas", price: 4.20, restaurant: lokalbar)
# Item.create!(category: "starters", name: "Nachos con Guacamole", price: 5.90, restaurant: lokalbar)

# Item.create!(category: "mains", name: "Ensaladilla Rusa", price: 4.90, restaurant: lokalbar)
# Item.create!(category: "mains", name: "Ensalada Verde con Mandarina, Uva y Nueces", price:7.50, restaurant: lokalbar)
# Item.create!(category: "mains", name: "Burger La Brava (allioli y salsa picante)", price: 10 , restaurant: lokalbar)
# Item.create!(category: "desserts", name: "Crema Catalana con Carquiñolis", price: 4.90, restaurant: lokalbar)
# Item.create!(category: "desserts", name: "Mel y Mató con Músico", price: 4.50, restaurant: lokalbar)
# Item.create!(category: "drinks", name: "Water", price: 1.75, restaurant: lokalbar)
# Item.create!(category: "drinks", name: "Wine", price: 8, restaurant: lokalbar)
# Item.create!(category: "drinks", name: "Cafe", price: 1.30, restaurant: lokalbar)
# Item.create!(category: "drinks", name: "Heineken", price: 2, restaurant: lokalbar)


tipicicatala = Restaurant.create!(name: "Típic i Català", address: "Carrer Sicília, 217, Barcelona", category: "Catalan", user: xavi, opening_time: "13:00", closing_time: "00:00", popularity: 3.9 )

image_src = File.join(Rails.root, "/app/assets/images/burger.jpg")
src_file = File.new(image_src)
tipicicatala.photo = src_file
tipicicatala.save



# Item.create!(category: "starters", name: "Snails of sea in brine", price: 5, restaurant: tipicicatala)
# Item.create!(category: "starters", name: "Mussels in pickled sauce", price: 5, restaurant: tipicicatala)
# Item.create!(category: "starters", name: "Olives arbequines", price: 2, restaurant: tipicicatala)

# Item.create!(category: "mains", name: "Gazpacho", price: 4, restaurant: tipicicatala)
# Item.create!(category: "mains", name: "Peas with mint", price: 4, restaurant: tipicicatala)
# Item.create!(category: "mains", name: "Chicken broth", price: 4, restaurant: tipicicatala)
# Item.create!(category: "mains", name: "Catalan Serrano Ham", price: 6, restaurant: tipicicatala)
# Item.create!(category: "mains", name: "Porc shank in the oven", price: 10, restaurant: tipicicatala)
# Item.create!(category: "desserts", name: "Crema catalana", price: 5.50, restaurant: tipicicatala)
# Item.create!(category: "desserts", name: "Yogurt", price: 3.60, restaurant: tipicicatala)


nuvol = Restaurant.create!(name: "Núvol", address: "Carrer de Sant Antoni Maria Claret, 92,Barcelona", category: "Spanish", user: anna, opening_time: "7:00", closing_time: "21:00", popularity: 4.2)

image_src = File.join(Rails.root, "/app/assets/images/catalan.jpg")
src_file = File.new(image_src)
nuvol.photo = src_file
nuvol.save






# Item.create!(category: "starters", name: "Hummus", description: "Hummus with row vegetables and slices of toasted bread", price: 5.50, restaurant: nuvol)
# Item.create!(category: "starters", name: "Nachos", description: "Nachos with Guacamole and pico de gallo with cream cheese cashew", price: 6.25, restaurant: nuvol)
# Item.create!(category: "starters", name: "Patatas bravas and homemade allioli", price: 4.10, restaurant: nuvol)

# Item.create!(category: "mains", name: "Alma salad", description: "Green leaves, red cabbage, carrots, beets, tomatoes, celery pate and pipes", price: 9.95, restaurant: nuvol)
# Item.create!(category: "mains", name: "Burger Sol", description: "Seitan, caramelized onion, tomato, lettuce, pickles, carrots", price: 7.95, restaurant: nuvol)
# Item.create!(category: "mains", name: "Luna Burger menu", description:"Menu with potatoes, drink and dessert", price: 10.95, restaurant: nuvol)


# resto1 = Restaurant.create!(name: "Bella Italia", address: "Carrer Arago 390, Barcelona", category: "Italian", user: luca, popularity: 3, opening_time: "10:30", closing_time: "19:30")
# resto2 = Restaurant.create!(name: "Xavi's place", address: "Carrer Casanova 20, Barcelona", category: "Spanish", user: xavi, popularity: 1, opening_time: "10:30", closing_time: "19:30")
resto3 = Restaurant.create!(name: "Vive la France", address: "Carrer d'en Grassot 101, Barcelona", category: "French", user: ben, popularity: 2, opening_time: "10:30", closing_time: "19:30")
resto5 = Restaurant.create!(name: "Han In", address: "Calle Aribau, 32 Barcelona", category: "Chinese", user: ben, popularity: 5, opening_time: "11:00", closing_time: "23:30")
resto6 = Restaurant.create!(name: "Chao Yue", address: "Calle Arago, 360, Barcelona", category: "Chinese", user: anna, popularity: 4, opening_time: "12:00", closing_time: "22:30")


image_src = File.join(Rails.root, "/app/assets/images/chinese.jpg")
src_file = File.new(image_src)
resto5.photo = src_file
resto5.save

image_src = File.join(Rails.root, "/app/assets/images/chine2.jpg")
src_file = File.new(image_src)
resto6.photo = src_file
resto6.save

Item.create!(category: "starters", name: "Hummus", price: 5.50, restaurant: resto3)
Item.create!(category: "starters", name: "Nachos", price: 6.25, restaurant: resto3)
Item.create!(category: "starters", name: "Patatas bravas and homemade allioli", price: 4.10, restaurant: resto3)

Item.create!(category: "mains", name: "Pizza margarita", description: "Pizza woodden cooked", price: 9.5, restaurant: resto3)
Item.create!(category: "mains", name: "Pasta carbonara", description: "Pasta with cream and tomatos", price: 8.3, restaurant: resto3)
Item.create!(category: "mains", name: "Home Burger", price: 11.9, restaurant: resto3)
Item.create!(category: "mains", name: "Steak Tartar", price: 15.9, restaurant: resto3)

Item.create!(category: "drinks", name: "Juice", price: 3, restaurant: resto3)
Item.create!(category: "drinks", name: "Cappuccino", price: 1.5, restaurant: resto3)
Item.create!(category: "drinks", name: "Tea", price: 1.5, restaurant: resto3)
Item.create!(category: "drinks", name: "Mojito", price: 7, restaurant: resto3)

Item.create!(category: "desserts", name: "Chocolat cake", price: 5, restaurant: resto3)
Item.create!(category: "desserts", name: "Creme brule", price: 5.5, restaurant: resto3)
Item.create!(category: "desserts", name: "Ice-cream", description: "lemon, mint, vanilla", price: 3.9, restaurant: resto3)
Item.create!(category: "desserts", name: "Fruits", price: 4.5, restaurant: resto3)

puts "Finished!"

