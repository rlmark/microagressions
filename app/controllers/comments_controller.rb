class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params.require(:comment).permit(:content, :post_id))
    @comment.downvote = 0
    if quality_check == false
      redirect_to root_path, :notice => "You have received too many downvotes. Your comment was not saved."
    elsif @comment.save
      session[:comment_id] = []
      session[:comment_id] << @comment.id
      redirect_to post_path(@comment.post_id)
    else
      render :new
    end
  end

  # checks if commenter is a jerk
  def quality_check
    session[:comment_id].each do |comment_id|
      if Comment.find(comment_id).downvote >= 12
        return false
      end
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
