class ProductsController < ApplicationController
  def index
    @items = cart
  end

  def add
    new_cart = cart
    new_cart << params[:product]
    session[:cart] = new_cart
    raise cart
    render :index
  end
end
