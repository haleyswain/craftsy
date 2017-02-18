class HomeController < ApplicationController
  def index
    @products = Product.all
  if current_user
      @user = current_user.id
    end
  end
end
