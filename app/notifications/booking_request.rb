# To deliver this notification:
#
# BookingRequest.with(post: @post).deliver_later(current_user)
notification = BookingRequest.with(booking: @booking)
notification.deliver(current_user)

class BookingRequest < Noticed::Base
  # Add your delivery methods
  #
  # deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"
  deliver_by :action_cable

  # Add required params
  #
  # param :post

  # Define helper methods to make rendering easier.
  #
   def message
  #   t(".message")
   end
  #
  def url
  #   post_path(params[:post])
  end
end
