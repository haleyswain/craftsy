class HomeController < ApplicationController
  def index
    @products = Product.all
    @product = Product.new
  end
end
