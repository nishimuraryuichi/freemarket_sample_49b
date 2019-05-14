class CategoriesController < ApplicationController
  def index
    @categories = Category.categories(params[:id].to_i)
    respond_to do |format|
      format.json
    end
  end


  def show
    @category = Category.find(params[:id].to_i)
    @parent_category = Category.parent_category(params[:id].to_i)
    @products = Product.all.where(category_id: @category[:id])
    @category_children = CategoryChildren.category_children(params[:id].to_i)
  end

  def new
    @categories = Category.categories(params[:id].to_i)
    respond_to do |format|
      format.json
    end
  end
end
