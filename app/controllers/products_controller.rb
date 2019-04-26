class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  # def create

  # end

  # def show
  #   @product = Produt.find(params[:product_id])
  # end

  # def edit

  # end

  # def update

  # end

  # def destroy

  # end
end
