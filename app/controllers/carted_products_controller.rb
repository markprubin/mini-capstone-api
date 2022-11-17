class CartedProductsController < ApplicationController
  
  def index
    carted_products = current_user.carted_products.where(status: "carted")
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

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: {status: "Carted product removed."}
  end
end
