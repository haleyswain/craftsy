class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new
  end

  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      flash[:notice] = "Comment successfully added!"
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @comment= Comment.find(params[:id])
    @product = Product.find(params[:product_id])
    if @comment.update(comment_params)
      redirect_to product_path(params[:product_id])
    else
      render :edit
    end
  end

  def destroy
    @user = current_user.id
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to root_path
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :author, product_id: @product.id)
    end
end
