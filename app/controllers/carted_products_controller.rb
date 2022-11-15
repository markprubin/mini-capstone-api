class CartedProductsController < ApplicationController
  def index
    pp current_user
    carted_products = CartedProduct.all
    render json: carted_products.as_json
  end
  
  def create
    carted_products = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
    )
    if carted_products.save
      render json: { message: "Cart created successfully" }, status: :created
    else
      render json: { errors: carted_products.errors.full_messages }, status: :bad_request
    end
  end
end
