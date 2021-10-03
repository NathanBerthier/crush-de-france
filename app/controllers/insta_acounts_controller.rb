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

  end

  def update

  end

  private

  def insta_acount_params
    params.require(:insta_acount).permit(:username, :password)
  end
end
