lokalbar = Restaurant.create!(name: "LOKAL BAR", address: "Calle Bruc, 118, Barcelona", category: "Spanish", user: xavi, opening_time: "11:00", closing_time: "22:00", popularity: 4 )



image_src = File.join(Rails.root, "/app/assets/images/tapas.jpg")
src_file = File.new(image_src)
lokalbar.photo = src_file
lokalbar.save

Item.create!(category: "starters", name: "Gazpacho", price: 4.90, restaurant: lokalbar)
Item.create!(category: "starters", name: "Patatas Bravas", price: 4.20, restaurant: lokalbar)
Item.create!(category: "starters", name: "Nachos con Guacamole", price: 5.90, restaurant: lokalbar)

Item.create!(category: "mains", name: "Ensaladilla Rusa", price: 4.90, restaurant: lokalbar)
Item.create!(category: "mains", name: "Ensalada Verde con Mandarina, Uva y Nueces", price:7.50, restaurant: lokalbar)
Item.create!(category: "mains", name: "Burger La Brava (allioli y salsa picante)", price: 10 , restaurant: lokalbar)
Item.create!(category: "desserts", name: "Crema Catalana con Carquiñolis", price: 4.90, restaurant: lokalbar)
Item.create!(category: "desserts", name: "Mel y Mató con Músico", price: 4.50, restaurant: lokalbar)
Item.create!(category: "drinks", name: "Water", price: 1.75, restaurant: lokalbar)
Item.create!(category: "drinks", name: "Wine", price: 8, restaurant: lokalbar)
Item.create!(category: "drinks", name: "Cafe", price: 1.30, restaurant: lokalbar)
Item.create!(category: "drinks", name: "Heineken", price: 2, restaurant: lokalbar)


Restaurante LOKAL BAR
Calle Bruc, 118, Barcelona, Barcelona
