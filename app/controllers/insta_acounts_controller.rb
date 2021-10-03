class InstaAcountsController < ApplicationController
  def new
    @insta = InstaAcount.new
    @city = City.find(params[:city_id])
  end

  def create
    @insta = InstaAcount.new(insta_acount_params)
    @insta.city_id = params[:city_id]
    if @insta.save
      redirect_to cities_path
    else
      render :new
    end
  end

  def edit
    @insta = InstaAcount.find(params[:id])
    @city = City.find(params[:city_id])
  end

  def update
    @insta = InstaAcount.find(params[:id])
    @insta.update(insta_acount_params)
    redirect_to cities_path
  end

  private

  def insta_acount_params
    params.require(:insta_acount).permit(:username, :password)
  end
end
