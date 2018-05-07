class Api::V1::RestaurantsController < ApplicationController
  before_action :grab_user

  def index
    @restaurants = Restaurant.where(user_id: @user.id)
    render json: @restaurants
  end

  def create

  end

  def update

  end

  def destroy

  end

  private

  def grab_user
    @user = User.find(params[:user_id])
  end
end
