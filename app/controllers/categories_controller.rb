class CategoriesController < ApplicationController
  before_action :find_category, except: [:index, :create]
  before_action :logged_in_user, only: [:create, :new, :destroy]

  def index
    @category = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = "success"
      redirect_to categories_path
    else
      render :new
    end
  end

  def show;  end

  def edit; end

  def update
    if @category.update_attributes category_params
      flash[:success] = t ".success"
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    flash[:success] = t ".success", category: @category.name
    redirect_to categories_url
  end

  private
  def find_category
    @category = Category.find_by id: params[:id]
  end

  def category_params
    params.require(:category).permit :name
  end
end
