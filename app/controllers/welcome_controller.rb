class WelcomeController < ApplicationController
  def index
    @posts = Post.all.sort_by{|p| p.created_at}.reverse
  end
end
