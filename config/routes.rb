Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  # get "/suppliers" => "suppliers#index"
  # get "/suppliers/:id" => "suppliers#show"
  # post "/suppliers" => "suppliers#create"
  # patch "/suppliers/:id" => "suppliers#update"
  # delete "/suppliers/:id" => "suppliers#destroy"

  #User Creation
  post "/users" => "users#create"
  # patch "/users" => "users#update"
  #User Log in
  post "/sessions" => "sessions#create"

  #Order
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"

  #Carted_Products
  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"
  delete "/carted_products/:id" => "carted_products#destroy"
end
