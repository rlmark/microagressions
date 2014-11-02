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
    @comment = Comment.find(params[:id])
    if params[:comment][:jerk]
      @comment.downvote +=1
    end
    if @comment.downvote >= 12
      @comment.update(content: "This comment has been removed for being shitty")
    end
    # @comment.quality_check(@comment.id)
    @comment.save
    redirect_to post_path(@comment.post_id)
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
