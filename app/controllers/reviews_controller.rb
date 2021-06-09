class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
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
