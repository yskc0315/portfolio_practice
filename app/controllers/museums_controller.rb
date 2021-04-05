class MuseumsController < ApplicationController

  before_action :set_museum, only:[:show, :edit, :update]

  def new
    @museum = Museum.new
    @regular_holiday = ["月", "火", "水", "木", "金", "土", "日", "祝", "不明"]
  end

  def create
    museum = Museum.new(museum_params)
    museum.save
    redirect_to museum_path(params[:id])
  end

  def index
    @museums = Museum.all
  end

  def show
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
    params.require(:museum).permit(:appearance_image, :name, :opening_time, :closing_time, :entrance_fee, :regular_holiday => [])
  end

  def set_museum
    @museum = Museum.find(params[:id])
  end

end
