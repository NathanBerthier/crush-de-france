class CitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    @my_cities = current_user.cities
    @moderated_cities = current_user.moderated_cities
  end

  def show
    @city = City.where(short_name: params[:city_name])[0]
    @post = Post.new
  end

  def new
    @city = City.new
  end

  def create # rubocop:disable Metrics/MethodLength
    data = city_params
    time = data[:upload_time]
    @city = City.new(
      name: data[:name].downcase,
      short_name: data[:short_name].downcase,
      upload_time: time,
      subscription_end: (DateTime.current + 5),
      user: current_user,
      lastupload_log: 'Create city',
      lastupload_date: DateTime.current
    )
    if @city.save
      redirect_to cities_path
    else
      render :new
    end
  end

  def edit
    @city = City.find(params[:id])
  end

  def update # rubocop:disable Metrics/MethodLength
    @city = City.find(params[:id])
    data = city_params
    time = data[:upload_time]
    @city.update(
      name: data[:name].downcase,
      short_name: data[:short_name].downcase,
      upload_time: time,
      lastupload_log: 'Update city',
      lastupload_date: DateTime.current
    )
    redirect_to cities_path
  end

  def destroy
    city = City.find(params[:id])
    city.destroy
    redirect_to cities_path
  end

  def subscription
    @city = City.find(params[:id])
  end

  def update_subscription
    city = City.find(params[:id])
    city.update(subscription: params[:sub_id], subscription_end: (DateTime.current + 365))
    redirect_to cities_path
  end

  private

  def city_params
    params.require(:city).permit(:name, :short_name, :upload_time)
  end
end
