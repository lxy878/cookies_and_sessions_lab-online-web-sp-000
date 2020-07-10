class ProductsController < ApplicationController
  def index
    @items = cart
  end

  def add
    raise params.inspect
    new_cart = cart
    new_cart << params[:product]
    session[:cart] = new_cart
    render :index
  end
end
