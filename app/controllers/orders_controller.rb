class OrdersController < ApplicationController

  def index
    order = Order.all
    render json: order.as_json
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order.as_json
  end

  def create
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: 
    )
    if order.save
      render json: order.as_json
    else
      render json: { errors: order.errors.full_messages }, status: :bad_request
    end
  end

end
