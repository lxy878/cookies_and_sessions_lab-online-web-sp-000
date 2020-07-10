class ProductsController < ApplicationController
  def index
    @items = cart
  end

  def add
    new_cart = cart
    new_cart << params[:product]
    session[:cart] = new_cart
    @items = cart
    render :index
  end
end
