class SessionsController < ApplicationController
  def refresh
    @post = Post.find(session[:id])
  end

  def delete
    
  end
end
