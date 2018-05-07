class Api::V1::RestaurantsController < ApplicationController
  before_action :grab_user
  before_action :grab_restaurant, only: [:update, :destroy]

  def index
    @restaurants = Restaurant.where(user_id: @user.id)
    render json: @restaurants
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.save
      render json: @restaurant, status: :accepted
    else
      render json: { errors: @restaurant.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    @restaurant.update(restaurant_params)
    if @restaurant.save
      render json: @restaurant, status: :accepted
    else
      render json: { errors: @restaurant.errors.full_messages}, status: :unprocessible_entity
    end

  end

  def destroy
    @restaurant.destroy
    render json: {body: nil, status: :no_content}
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :json, :user_id)
  end

  def grab_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def grab_user
    @user = User.find(params[:user_id])
  end
end
