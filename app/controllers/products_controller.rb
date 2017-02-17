class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.new
  end

  def new
   @product = Product.new
 end

 def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to  product_path(@product)
    else
      render :new
    end
  end

end
