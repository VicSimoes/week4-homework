class ProductsController < ApplicationController

  def index
    @product_list = ["Helicopter Toy", "Harry Potter", "iPhone", "Sofa", "Coffee Mug"]
  end

  def show
    @product = "iPhone"
  end

end
