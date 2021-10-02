class PostsController < ApplicationController
  def index
    @post = Post.where(city: params[:city_id], status: 'att')[0]
    unless @post
      redirect_to cities_path
    end
  end

  def update
    post = Post.find(params[:id])
    post.update(status: 'val', validated_by: current_user.id)
    redirect_to city_posts_path(params[:city_id])
  end

  def create
    city = City.where(short_name: params[:city_name])[0]
    @post = Post.new(posts_params)
    @post.city = city
    @post.status = 'att'
    @post.save
    redirect_to show_city_path(city.short_name.downcase)
  end

  private

  def posts_params
    params.require(:post).permit(:username, :message)
  end
end
