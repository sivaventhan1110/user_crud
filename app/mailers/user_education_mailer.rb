class UserEducationMailer < ApplicationMailer
  def new_education_email
    @user = User.find(params[:user_education][:user_id])

    mail(to: @user.email_id, subject: "You have added Education!")
  end

  def user_education_notification
    @user = User.find(params[:user_education][:user_id])

    mail(to: @user.email_id, subject: "You have added Education!")
  end
end
