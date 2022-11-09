class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    render :index
  end
  
  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
    )
    if product.save
      render json: product.as_json
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
    @product = product

  end

  def update
    product = Product.find_by(id: params["id"])
    
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.description = params["description"] || product.description
    if product.save
      render json: product.as_json
    else
      render json: { errors: product.errors.full_messages}, status: :unprocessable_entity
    end
    @product = product
  
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: {message: "Product successfully removed!"}
  end
end
