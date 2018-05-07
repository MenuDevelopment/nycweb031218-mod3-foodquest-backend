class Api::V1::UsersController < ApplicationController
  before_action :grab_user, only: [:create, :update, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def grab_user
    @user = User.find(params[:id])
  end

end
