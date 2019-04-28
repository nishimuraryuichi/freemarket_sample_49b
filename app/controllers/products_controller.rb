class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
<<<<<<< HEAD

=======
>>>>>>> development_branch_0426_3
  end

  def create

  end

  def show
    @product = Product.new
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
