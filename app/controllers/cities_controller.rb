class CitiesController < ApplicationController
  def index
    @my_cities = City.where(user == current_user)
    raise
  end

  def show

  end

  def new

  end

  def create

  end
end
