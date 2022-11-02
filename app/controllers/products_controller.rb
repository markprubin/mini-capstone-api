class ProductsController < ApplicationController
  def all_products
    products = Product.find_by(id: params["id"])
    render json: products.as_json
    #render json: Product.all (why does this also work?)
  end

  
end
