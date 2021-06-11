class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @lesson = @booking.lesson
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to lesson_path(@lesson)
    else
      render 'new'
    end
  end

  def edit
    @review = Review.find(params[:review_id])
  end

  def update
    @review = Review.find(params[:review_id])
    if @review.update(review_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:review_id])
    @review.destroy
    redirect_to user_path(@user)
  end

   private
  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end
