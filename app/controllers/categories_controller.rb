class CategoriesController < ApplicationController
  def index
    @categories = Category.categories(params[:id].to_i)
    respond_to do |format|
      format.json
    end
  end

  def show
  end

  def new
    @categories = Category.categories(params[:id].to_i)
    respond_to do |format|
      format.json
    end
  end
end
