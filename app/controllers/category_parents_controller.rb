class CategoryParentsController < ApplicationController
  def index

  end

  def show
    @parent_category = ParentCategory.find(params[:id].to_i)
    @products = Product.all.where(parent_category_id: @parent_category[:id])
    @categories = Category.categories(params[:id].to_i)
  end


end
