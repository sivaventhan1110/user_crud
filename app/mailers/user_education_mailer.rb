class UserEducationMailer < ApplicationMailer
  def new_education_email
    @user = params[:user]

    mail(to: @user.email_id, subject: "You have added Education!")
  end
end
