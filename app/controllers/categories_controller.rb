class CategoriesController < ApplicationController
	before_action :find_category, except: [:index, :create]
  def index
    @categories = Category.all.paginate page: params[:page], per_page: 6
  end

  def show ; end

  private

  def find_category
    @category = Category.find_by id: params[:id]
  end
end
