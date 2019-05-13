class CategoryChildrenController < ApplicationController

  def index
    @category_children = CategoryChildren.category_children(params[:id].to_i)
    respond_to do |format|
      format.json
    end
  end

  def show

  end

  def new
    @category_children = CategoryChildren.category_children(params[:id].to_i)
    respond_to do |format|
      format.json
    end

  end
end

