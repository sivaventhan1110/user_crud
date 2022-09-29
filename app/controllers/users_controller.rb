class UsersController < ApplicationController

  before_action :find_user, only: [:show, :update, :destroy, :edit]

  # to list all users
  def index
    @users = User.all
  end 

  def new 
    @user = User.new
  end

  def create
    if @user= User.create(user_params)
      flash[:success] = "User was successfully Added."
      redirect_to user_path(@user.id)
    else 
      redirect_to users_path
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to users_path(@user)
  end

  def show
  end 

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:firstname,:lastname,:email_id,:username,:address,:contact_no,:dob,:image)
  end

  def find_user
    @user = User.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    render json: 'User not exist', status: :not_found
  end
end 
