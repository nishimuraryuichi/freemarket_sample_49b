class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update]
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
  end

  def create
    @product = Product.new(product_params)
    if @product.save
        redirect_to new_product_path
    else
       @product = Product.new
      #  flash.now[:alert] = "入力項目を埋めきれていません。もう一度入れ直してください"
       render :new
    end

  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to action: :edit_index
    else
      render :edit
    end
  end

  def destroy

  end

  def confirm_buy
  end

  def edit_index
   @products = Product.all
  end

  private
  def product_params
    params.require(:product).permit(:name,:price,:detail,:parent_category_id,:status_id,:delivery_fee_id,:prefecture_id,:preparation_id,images: [])
  end

  def set_product
    @product = Product.find(params[:id])
  end
end

