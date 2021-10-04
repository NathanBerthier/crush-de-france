class UsersController < ApplicationController
  def index
    @city = City.find(params[:city_id])
    @moderators = Moderator.where(city: @city)
    if params[:query].present?
      @users = User.where('username ILIKE ?', "%#{params[:query]}%")
    end
  end
end
