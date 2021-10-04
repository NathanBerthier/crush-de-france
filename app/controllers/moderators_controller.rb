class ModeratorsController < ApplicationController
  def create
    Moderator.create(
      city_id: params[:city_id],
      user_id: params[:user_id]
    )
    redirect_to city_users_path(params[:city_id])
  end

  def destroy
    moderator = Moderator.find(params[:id])
    moderator.destroy
    redirect_to city_users_path(params[:city_id])
  end
end
