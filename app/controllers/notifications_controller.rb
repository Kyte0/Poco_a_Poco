class NotificationsController < ApplicationController

  def index
    @notifications = current_user.notifications.where(seen: false)
  end

  def show
    @notification = Notification.find(params[:id])

    @notification.update(seen: true)
    redirect_to @notification.url
  end
end
