class ProductsController < ApplicationController
  def index
  end

  def add
    new_cart = cart
    cart << params[:product]
    session[:cart] = new_cart
    render :index
  end
end
