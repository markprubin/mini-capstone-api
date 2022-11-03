class ProductsController < ApplicationController
  
  def index
    products = Product.all
    render json: products.as_json
  
  def show
    products = Product.find_by(id: params["id"])
    render json: products.as_json
    #render json: Product.all (why does this also work?)
  end


end
