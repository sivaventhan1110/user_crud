class UserEducationsController < ApplicationController
  def new
    @user =  User.find(params[:user_id])
    @user_education = @user.user_educations.new
  end

  def create
    @user = User.find(params[:user_id])
    @user_education =  @user.user_educations.create!(education_params)
    UserEducationMailer.with(user: @user).new_education_email.deliver_later
    flash[:success] = "Education details was successfully Added."
    redirect_to  user_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @user_education = @user.user_educations.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @user.user_educations.update(education_params)
    flash[:success] = "Education details was successfully updated"
    redirect_to  user_path(@user)
  end

  def show
    @user = User.find(params[:user_id])
    redirect_to  user_path(@user)
  end 

  
  def destroy
    @user = User.find(params[:user_id])
    education = @user.user_educations.find(params[:id])
    education.delete
    flash[:success] = "Education details was successfully Deleted."
    redirect_to  user_path(@user)
  end

  private

  def education_params
    params.require(:user_education).permit(:degree,:university_name,:grade,:percentage)
  end

end
