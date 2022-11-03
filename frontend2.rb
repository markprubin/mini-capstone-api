require "http"

system "clear"

# MOVE TO PRACTICE WEB REQUESTS

# response = HTTP.get("http://localhost:3000/products")
#   products = response.parse["name"]



puts "Welcome to the Landscaping Store. The items below are currently in stock:"
puts "[1] Heavy Duty Wide Shovel"
puts "[2] Electric Lawnmower"
puts "[3] 18 in. Gravel Rake"
puts "[4] Heavy Duty Work Gloves"

input = gets.chomp

if input == "1"
  response = HTTP.get("http://localhost:3000/products/1")
  product = response.parse["name"]
  price = response.parse["price"]
  puts "The #{product} costs $#{price}."
end
if input == "2"
  response = HTTP.get("http://localhost:3000/products/2")
  product = response.parse["name"]
  price = response.parse["price"]
  puts "The #{product} costs $#{price}."
end
if input == "3"
  response = HTTP.get("http://localhost:3000/products/3")
  product = response.parse["name"]
  price = response.parse["price"]
  puts "The #{product} costs $#{price}."
end
if input == "4"
  response = HTTP.get("http://localhost:3000/products/4")
  product = response.parse["name"]
  price = response.parse["price"]
  puts "The #{product} costs $#{price}."
end

