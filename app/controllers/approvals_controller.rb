class ApprovalsController < ApplicationController
  def create
    post = Post.find(params[:approval][:post_id])
    current_user.approve(post)
    redirect_to :back
  end

  def destroy
    Approval.destroy(params[:id])
    redirect_to pages_feed_path
  end

end
