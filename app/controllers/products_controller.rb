class ProductsController < ApplicationController
  before_filter :authenticate_user!
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
    @user = current_user.id
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to  products_path
    else
      redirect_to root_path
    end
  end

  def show
    @user = current_user.id
    @product = Product.find(params[:id])
  end

  def edit
   @user = current_user.id
   @product = Product.find(params[:id])
 end

 def update
    @user = current_user.id
    @product = Product.find(params[:id])
    if @product.update
      redirect_to :back
    else
      render :edit
    end
  end

private
def product_params
    params.require(:product).permit(:name, :description, :price, :image, :country)
  end


end
