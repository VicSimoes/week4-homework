class ProductsController < ApplicationController

  def index
    @product_list = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

end
