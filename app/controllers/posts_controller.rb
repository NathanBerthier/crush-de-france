class PostsController < ApplicationController
  def create
    city = City.where(short_name: params[:city_name])[0]
    @post = Post.new(posts_params)
    @post.city = city
    @post.status = 'toto'
    @post.save
    redirect_to show_city_path(city.short_name.downcase)
  end

  private

  def posts_params
    params.require(:post).permit(:username, :message)
  end
end
