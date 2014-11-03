class Comment < ActiveRecord::Base
  belongs_to :post

  # def quality_check(id)
  #   @comment = Comment.find(id)
  #   if @comment.downvote >= 12
  #     @comment.content = "This comment has been removed for being shitty."
  #   end
  # end
end
