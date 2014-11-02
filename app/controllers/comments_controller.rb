class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    # raise params.inspect
    @comment = Comment.new(params.require(:comment).permit(:content, :post_id))
    @comment.downvote = 0
    if @comment.save
      redirect_to post_path(@comment.post_id)
    else
      render :new
    end
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
