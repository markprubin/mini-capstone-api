Rails.application.routes.draw do
get "/product_path/:id", controller: "products", action: "one_product"

end
