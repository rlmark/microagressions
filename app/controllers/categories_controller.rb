class CategoriesController < ApplicationController
  def new
    @categories = Category.all
    @category = Category.new
  end

  def create
  end

  def update
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
