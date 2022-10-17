# To deliver this notification:
#
# UserEducationNotification.with(post: @post).deliver_later(current_user)
# UserEducationNotification.with(post: @post).deliver(current_user)

class UserEducationNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  deliver_by :email, mailer: 'UserEducationMailer'

  deliver_by :slack, debug: true
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  # param :post

  # Define helper methods to make rendering easier.
  #
  def message
    "Test Message"
  end
  
  def url
    user_path(params[:user_id])
  end
  def email_notifications?
    recipient.email_notifications?
  end
end
