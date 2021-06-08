class UsersController < ApplicationController
  def show
    @completed_bookings = Booking.where("end_date < ?", DateTime.now)
    @upcoming_bookings = Booking.where("start_date >= ?", DateTime.now)
  end
end
