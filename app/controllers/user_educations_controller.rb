class UserEducationsController < ApplicationController
  def new
    @user = User.find(params[:id])
  end

  def create
    @user = User.find(params[:id])
    @user.user_educations.create!(education_params)
    flash[:success] = "Education details was successfully Added."
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
    params.permit(:degree,:university_name,:grade,:percentage)
  end

end
