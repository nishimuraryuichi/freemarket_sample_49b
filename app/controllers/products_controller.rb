class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    # @product = Product.new(product_params)
    # if @product.save?
    #   redirect_to 
    # else
    #   @product = Product.new
    #   flash.now[:alert] = "入力項目を埋めきれていません。もう一度入れ直してください"
    #   render :new
    # end     
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def confirm_buy
  end

  private
  # def product_params
  #   params.require(:product).permit(:)
  # end
end
