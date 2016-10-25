class ProductsController < ApplicationController
  def index
    @cart = cart #so no nil class error
    #render 'products/index.html' (Not needed)
  end

  def add
    cart << params[:product]#puts product into cart
    redirect_to '/' #not really a new/show/edit, so need to redirect?
  end
end