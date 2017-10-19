class FeedBacksController < ApplicationController
  def create
    @feed_back = FeedBack.new
    @feed_back.user_id = current_user.id
    @feed_back.post_id = feed_back_params[:post_id]
    @feed_back.like = feed_back_params[:like]

    @feed_back.save
    redirect_to post_path(feed_back_params[:post_id])
  end

  def update
    @feed_back = FeedBack.find_by(user_id: current_user.id, post_id: feed_back_params[:post_id]).update(like: feed_back_params[:like],post_id:feed_back_params[:post_id])
    redirect_to post_path(feed_back_params[:post_id])
  end
  private
  def feed_back_params
    params.permit(:like,:post_id)
  end
end
