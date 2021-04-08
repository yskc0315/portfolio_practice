class ForumPostsController < ApplicationController
  def create
    forum_post = current_user.forum_posts.new(forum_post_params)
    forum_post.forum_id = params[:forum_id]
    forum_post.save
    redirect_back(fallback_location: root_path)
  end

  private

  def forum_post_params
    params.require(:forum_post).permit(:content)
  end
end
