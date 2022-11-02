Rails.application.routes.draw do
get "/product_path", controller: "products", action: "all_products"
end
