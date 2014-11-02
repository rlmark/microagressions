class CategoriesController < ApplicationController
  def new
    @categories = Category.all
    @category = Category.new
  end

  def create
    @category = Category.new(params.require(:category).permit(:title))
    @category.title.capitalize!
    if @category.save
      redirect_to new_categories_path
    end
  end

  def update
    #raise params.inspect
  end

  def edit
  end

  def destroy
  end

  def show
  end

  def index
  end
end
