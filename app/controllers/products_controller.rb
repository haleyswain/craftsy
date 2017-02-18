class ProductsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

  def index
    @products = Product.where(owner_id: current_user.id)
    @user = current_user.id
  end

  def show
    @user = current_user.id
    @product = Product.find(params[:id])
  end

  def new
   @product = Product.new
 end

 def create
    @product = Product.new(product_params)
    @product.owner_id = current_user.id
    @user = current_user.id
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to products_path
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
    if @product.update(owner_id: current_user.id)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @user = current_user.id
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end


private
def product_params
    params.require(:product).permit(:name, :description, :price, :image, :country, :comments)
  end



end
