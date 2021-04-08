class MapsController < ApplicationController
  def index
    @museums = Museum.all
  end

  private

end
