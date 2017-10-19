class CommentsController < ApplicationController
  def create
  @comment = Comment.new(comment_params)
  if @comment.save
    redirect_to post_path(comment_params[:post_id])
  else
    redirect_to post_path(comment_params[:post_id])
  end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
      redirect_to post_path(@comment.post.id)
  end

  private
   def comment_params
     params.permit(:body,:user_id,:post_id)
   end
end
