class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.vote = 0
    if @post.save
      session[:id] = @post.id
      redirect_to new_categories_path
    else
      render :new
    end
  end

  def update
    find_post
    if params[:post][:upvote]
      @post.vote += 1
      @post.save
    end
    redirect_to root_path
  end

  def edit
  end

  def destroy
  end

  def show
    find_post
  end

  def index
  end

  private

    def post_params
      params.require(:post).permit(:title, :content)
    end

    def find_post
      @post = Post.find(params[:id])
    end

end
