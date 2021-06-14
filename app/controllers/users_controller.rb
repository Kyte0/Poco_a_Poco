class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @completed_bookings = Booking.where("end_date < ? and user_id = ?", DateTime.now, @user)
    @upcoming_bookings = Booking.where("start_date >= ? and user_id = ?", DateTime.now, @user)
  end

end
