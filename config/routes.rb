Rails.application.routes.draw do
get "/product_path/:id", controller: "products", action: "all_products"


end
