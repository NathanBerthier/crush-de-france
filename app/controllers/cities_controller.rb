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
    @city = City.new
  end

  def create
    data = city_params
    time = "#{data['upload_time(4i)']}:#{data['upload_time(5i)']}"
    @city = City.new(
      name: data[:name],
      short_name: data[:short_name],
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

  private

  def city_params
    params.require(:city).permit(:name, :short_name, 'upload_time(4i)', 'upload_time(5i)')
  end
end
