Rails.application.routes.draw do
get "/product_path", controller: "products", action: "all_products"

get "/shovel_path", controller: "products", action: "shovel"

get "/lawnmower_path", controller: "products", action: "lawnmower"

get "/rake_path", controller: "products", action: "rake"

get "/glove_path", controller: "products", action: "glove"
end
