class VisitsController < ApplicationController
  def create
    museum = Museum.find(params[:museum_id])
    visit = current_user.visits.new(museum_id: museum.id)
    visit.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    museum = Museum.find(params[:museum_id])
    visit = current_user.visits.find_by(museum_id: museum.id)
    visit.destroy
    redirect_back(fallback_location: root_path)
  end
end
