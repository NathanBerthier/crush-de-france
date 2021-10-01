class CitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    @my_cities = City.where(user: current_user)
  end

  def show
    @city = City.where(short_name: params[:city_name])[0]
    @post = Post.new
  end

  def new

  end

  def create

  end
end
