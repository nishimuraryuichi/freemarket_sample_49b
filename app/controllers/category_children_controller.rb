class CategoryChildrenController < ApplicationController

  def index
    @category_children = CategoryChildren.category_children(params[:id].to_i)
    respond_to do |format|
      format.json
    end
  end

  def show
    @category_child = CategoryChildren.find(params[:id].to_i)
    @category = CategoryChildren.category(params[:id].to_i)
    @parent_category = CategoryChildren.parent_category(params[:id].to_i)
    @products = Product.all.where(category_child_id: @category_child[:id])
    @category_children = CategoryChildren.category_children(@category_child[:category_id])
  end

  def new
    @category_children = CategoryChildren.category_children(params[:id].to_i)
    respond_to do |format|
      format.json
    end
  end
end

