class FavoritesController < ApplicationController
  def create
    comment = Comment.find(params[:comment_id])
    favorite = current_user.favorites.new(comment_id: comment.id)
    favorite.save
    comment.create_notification_like!(current_user)
    redirect_back(fallback_location: root_path)
  end

  def destroy
    comment = Comment.find(params[:comment_id])
    favorite = current_user.favorites.find_by(comment_id: comment.id)
    favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
