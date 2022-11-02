class ProductsController < ApplicationController
  def all_products
    products = Product.all
    render json: products.as_json
    #render json: Product.all (why does this also work?)
  end

  def shovel
    product = Product.find_by(name: "Heavy Duty Wide Shovel")
    render json: product.as_json
  end

  def lawnmower
    product = Product.find_by(name: "Electric Lawnmower")
    render json: product.as_json
  end

  def rake
    product = Product.find_by(name: "18 in. Gravel Rake")
    render json: product.as_json
  end

  def glove
    product = Product.find_by(name: "Heavy Duty Work Gloves")
    render json: product.as_json
  end

  
end
