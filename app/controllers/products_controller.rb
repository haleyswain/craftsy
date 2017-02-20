class ProductsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

  def index
    @products = Product.all
    if current_user
      @user = current_user.id
    end
  end

  def show
    @product = Product.find(params[:id])
    @comments = @product.comments
    if current_user
    @user = current_user.id
    end
  end


private
def product_params
    params.require(:product).permit(:name, :description, :price, :country)
  end



end
