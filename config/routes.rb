Rails.application.routes.draw do
  get "/products", => "products#index"
  get "/producs/:id" => "products#show"

end
