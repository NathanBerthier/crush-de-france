class CitiesController < ApplicationController
  def index
    @my_cities = City.where(:user == current_user)
    UserMailer.with(user: current_user).welcome_email.deliver_later
  end

  def show

  end

  def new

  end

  def create

  end
end
