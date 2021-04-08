class ForumsController < ApplicationController
  def new

  end

  def create
    forum = Forum.new(forum_params)
    forum.save
    redirect_to forums_path
  end

  def index
    @forums = Forum.all
    @forum = Forum.new
    @forum.users << current_user
  end

  def show
    @forum = Forum.find(params[:id])
    if !@forum.users.include?(current_user)
      @forum.users << current_user
    end
    @forum_post = current_user.forum_posts.new
    @forum_posts = ForumPost.where(forum_id: @forum.id).all
  end

  private
  def forum_params
    params.require(:forum).permit(:title, :body, :user_id => [])
  end

  def forum_post_params
    params.require(:forum_post).permit(:content)
  end
end
