class ProductsController < ApplicationController

  def index
    @product_list = Product.all
  end

  def show
    @product = Product.find_by(:id => params[:product_id])
  end

  def edit
    @product = Item.find_by(:id => params[:product_id])
  end

end
