class ProductsController < ApplicationController
  def index
    products = Product.all

    # products = products.map do |product|
    #   {
    #     id: product.id,
    #     name: product.name,
    #     description: product.description,
    #     link: "/api/products/#{product.id}"
    #   }
    # end

    render json: products
  end

  def show
  end
end
