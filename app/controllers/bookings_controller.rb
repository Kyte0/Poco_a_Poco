class BookingsController < ApplicationController


  def index
    all_completed_bookings = Booking.where("end_date < ?", DateTime.now)
    @completed_bookings = all_completed_bookings.select { |booking| booking.lesson.user == current_user }
    all_upcoming_bookings = Booking.where("start_date >= ? ", DateTime.now)
    @upcoming_bookings = all_upcoming_bookings.select { |booking| booking.lesson.user == current_user }
  end


  def show
    @booking = Booking.find(params[:id])
    @lesson = Lesson.find(params[:id])
    @tasks = @booking.tasks
    @review = Review.new
  end

  def new
    @booking = Booking.new
  end

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.lesson = @lesson

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to users_path(@user)
    else
      render :edit
     end
   end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to users_path(@user)
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
