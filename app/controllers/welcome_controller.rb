class WelcomeController < ApplicationController
  def index
    @categories = Category.all
    if params[:category]
      @posts = Category.find(params[:category]).posts.order(created_at: :asc)
    else
      @posts = Post.all.sort_by{|p| p.created_at}.reverse
    end

  end
end
