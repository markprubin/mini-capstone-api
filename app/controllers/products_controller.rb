class ProductsController < ApplicationController
  
  def index
    products = Product.all
    render json: products.as_json
  end
  
  def show
    products = Product.find_by(id: params["id"])
    render json: products.as_json
    #render json: Product.all (why does this also work?)
  end

  def create
    product = Product.new(
      name: "Soil Topper",
      price: 7,
      image_url: "https://images.thdstatic.com/productImages/867ace64-31e5-4940-93c8-92a192532964/svn/kellogg-garden-organics-topsoil-6560-64_1000.jpg",
      description: "Topper for lawns. Enriched with organic fertilizer. Helps seeds germinate faster. Helps revitalize lawns.",
    )
      product.save
      render json: product.as_json
  end
end
