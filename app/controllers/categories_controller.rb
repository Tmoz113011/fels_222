class CategoriesController < ApplicationController
  before_action :find_category, except: [:index, :create]

  def index
    @category = Category.new
    @categories = Category.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new; end

  def create
    @category = Category.new category_params

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
        format.js {}
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
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
    params.fetch(:category, {})
  end
end
