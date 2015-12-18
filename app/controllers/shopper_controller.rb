class ShopperController < ApplicationController
	include CurrentCart
	before_action:set_cart
	skip_before_action :authorize 
  def index
  	@products = Product.order(:name)
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @producta = Product.order("created_at DESC")
    end
  end
end
