User.create!(name: "Mark", email: "mark@example.com", password: "password", admin: true)
User.create!(name: "Tom", email: "Tom@example.com", password: "password")

Supplier.create!(name: "Milwaukee", email: "info@mil.com", phone: "888-123-1234")
Supplier.create!(name: "Dewalt", email: "info@dew.com", phone: "555-123-4567")
Supplier.create!(name: "Dirt & Grass Co.", email: "dirt@grass.com", phone: "123-456-7890")



products = Product.create(name: "Heavy Duty Wide Shovel", price: 49.99, description: "A steel shovel with a wide mouth for efficient transfer of gravel, larger amounts of dirt, or other landscaping materials. It has a rubber grip at the top for comfort.", supplier_id: 2)
products = Product.create(name: "Electric Lawnmower", price: 129.99, description: "An 11 amp 13 in. electric mower, an alternative to traditional gas mowers. This is environmentally friendly and virtually maintenance free. It is lightweight and collapses for easy storage." supplier_id: 1 )
products = Product.create(name: "18 in. Gravel Rake", price: 49.99, description: "A perfect landscaping rake for projects involving spreading small and big gravel, tough soil, mulch, and other debris. It is made out of 100% steel and is very durable."  supplier_id: 2 )
products = Product.create(name: "Heavy Duty Work Gloves", price: 29.99, description: "Heavy duty work gloves suitable for all projects. Made out of nylon and polyurethane, they have a secure fit velcro strap, machine washable, and provided safety through rubber knuckle protection." supplier_id: 1 )
products = Product.create(name: "Soil Topper", price: 7.00, description: "Heavy duty work gloves suitable for all projects. Made out of nylon and polyurethane, they have a secure fit velcro strap, machine washable, and provided safety through rubber knuckle protection." supplier_id: 4 )

Image.create(product_id: 1, url: "https://cdn.mscdirect.com/global/images/ProductImages/7451164-21.jpg")
Image.create(product_id: 2, url: "https://mobileimages.lowes.com/productimages/aa4f51ce-2442-4dd0-a066-56f556421e54/11470444.jpg")
Image.create(product_id: 3, url: "https://i5.walmartimages.com/asr/3eb42fd0-fc84-4fe8-8688-d7abd92261bd_1.ace3b550559e948f592b9fa5c178a52e.jpeg")
Image.create(product_id: 4, url: "https://m.media-amazon.com/images/I/91Dm2lyuxwL.jpg")
Image.create(product_id: 5, url: "http://www.soiltoppers.net/wp-content/uploads/2021/01/landscape-mix-1.jpg")

