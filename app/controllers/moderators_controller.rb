class ModeratorsController < ApplicationController
  def new
    @city = City.find(params[:city_id])
  end
end
