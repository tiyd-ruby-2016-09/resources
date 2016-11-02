books_category = Category.create(name: 'Books')
lamps_category = Category.create(name: 'Lamps')
bikes_category = Category.create(name: 'Bikes')

Product.create(name: 'Harry Potter', description: 'The Shit', category: books_category)
Product.create(name: 'LOTRO', description: 'The Shit', category: books_category)
Product.create(name: 'Game of Thrones', description: 'The Shit', category: books_category)
Product.create(name: 'Asimov Foundation', description: 'The Shit', category: books_category)

Product.create(name: 'Leg Lamp', description: "Its a Leg", category: lamps_category)
Product.create(name: 'Old Lamp', description: "Its Old", category: lamps_category)
Product.create(name: 'New Lamp', description: "Its New", category: lamps_category)

Product.create(name: 'Schwinn', description: "Cool bike man", category: bikes_category)
Product.create(name: 'Fitch\'s', description: "Also Cool bike man", category: bikes_category)
Product.create(name: 'Iron Horse', description: "Best Bike Evarrr", category: bikes_category)
