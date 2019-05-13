class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update,:destroy,:confirm_buy]

  def index
    @products = Product.order(created_at: :DESC).limit(4)
  end

  def new
    @product = Product.new
  end

  def show
    @profile = Profile.find(1)
  end

  def create
    @product = current_user.products.new(product_params)
    if @product.save
        redirect_to new_product_path, notice: "商品が出品されました"
    else
      flash.now[:alert] = "必須項目を埋めてください"
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
    if @product.destroy
      redirect_to root_path
    else
      render :edit
    end
  end

  def confirm_buy
  end

  def buy
    @product = Product.find(params[:product_id])
    MyPayjp.payjp((@product.price*0.9).round,params[:user_id])
    @product.update(purchased:true)
    redirect_to action: :show, id:@product.id
  end

  def edit_index
   @products = current_user.products.where(purchased:false)
   @soldProducts = current_user.products.where(purchased:true)
  end

  def search
    @products = Product.where('name LIKE ?',"%#{params[:id]}%")
  end

  private
  def product_params
    params.require(:product).permit(:name,:price,:detail,:parent_category_id,:category_id,:category_child_id,:status_id,:delivery_fee_id,:prefecture_id,:preparation_id,images: [])
  end

  def set_product
    @product = Product.find(params[:id])
  end
end

