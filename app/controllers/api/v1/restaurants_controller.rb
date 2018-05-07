class Api::V1::RestaurantsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @restaurants = Restaurant.where(user_id: @user.id)
    render json: @restaurants
  end
end
