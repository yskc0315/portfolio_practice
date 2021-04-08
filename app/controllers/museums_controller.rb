class MuseumsController < ApplicationController

  before_action :set_museum, only:[:show, :edit, :update]

  def new
    @museum = Museum.new
    @regular_holiday = ["月", "火", "水", "木", "金", "土", "日", "祝", "不明"]
    @museums = Museum.all
  end

  def create
    museum = Museum.new(museum_params)
    museum.save
    # redirect_to museum_path(museum.id)
    redirect_to new_museum_path
  end

  def index
    @museums = Museum.all.order(:prefecture)
  end

  def show
    @comment = Comment.new
    @comments = Comment.where(museum_id: params[:id])
  end

  def edit
    @regular_holiday = ["月", "火", "水", "木", "金", "土", "日", "祝", "不明", "なし"]
  end

  def update
    @museum.update(museum_params)
    redirect_to museum_path(params[:id])
  end

  private

  def museum_params
    params.require(:museum).permit(
      :appearance_image, :name, :prefecture, :address, :opening_time, :closing_time, :entrance_fee, :url, :genre_id, :regular_holiday => []
      )
  end

  def set_museum
    @museum = Museum.find(params[:id])
  end

end
