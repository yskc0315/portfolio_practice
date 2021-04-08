class RecommendsController < ApplicationController
  def create
    museum = Museum.find(params[:museum_id])
    recommend = current_user.recommends.new(museum_id: museum.id)
    recommend.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    museum = Museum.find(params[:museum_id])
    recommend = current_user.recommends.find_by(museum_id: museum.id)
    recommend.destroy
    redirect_back(fallback_location: root_path)
  end
end
