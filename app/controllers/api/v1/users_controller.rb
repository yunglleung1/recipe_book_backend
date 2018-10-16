class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update]

  def index
    @users = User.all
    render json: @users
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    # byebug
    # @user = User.find(params[:userId])
    render json: find_user
    # render :show
  end

  private

  def user_params
    params.permit(:id, :name)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
