class PostGymsController < ApplicationController

  def new
    @post_gym = PostGym.new
  end

  def create
    @post_gym = PostGym.new(post_gym_params)
    @post_gym.user_id = current_user.id
    @post_gym.save
    redirect_to post_gyms_path
  end

  def index
    @post_gyms = PostGym.all
  end

  def show
    @post_gym = PostGym.find(params[:id])
  end

  private
  def post_gym_params
    params.require(:post_gym).permit(:gym_name, :image, :caption)
  end
end
