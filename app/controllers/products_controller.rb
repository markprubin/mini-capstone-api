class ProductsController < ApplicationController
  def one_product
    products = Product.find_by(id: params["id"])
    render json: products.as_json
    #render json: Product.all (why does this also work?)
  end

end
