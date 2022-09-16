class UsersController < ApplicationController

  # to list all users
  def index
    @users = User.all
  end 

  def new 
    @user = User.new
  end

  def create
    @user= User.create(:firstname=> params[:firstname], :lastname=> params[:lastname], :email_id=> params[:email_id], :username=> params[:username], :address=> params[:address], :contact_no=> params[:contact_no], :dob=> params[:dob] )
    flash[:success] = "User was successfully Added."
    redirect_to users_path
  end

  def show
    @user = User.find(params[:id])
  end 
  
  def add_education
    @user = User.find(params[:id])
  end

  def save_education
    @user = User.find(params[:id])
    @user.user_educations.create(:degree=>params[:degree],:university_name=>params[:university_name],:grade=>params[:grade],:percentage=>params[:percentage])
    flash[:success] = "Education details was successfully Added."
    redirect_to  user_path(@user)
  end

  def delete_education
    @user = User.find(params[:user_id])
    @user.user_educations.find(params[:id])
    flash[:success] = "Education details was successfully Deleted."
    redirect_to  user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

end
