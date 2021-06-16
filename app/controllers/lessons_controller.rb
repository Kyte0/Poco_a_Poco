class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    if @lesson.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def index
    if params[:lesson].present? && params[:lesson][:query].present?
      @choice = params[:lesson][:query]
    # query = params[:lesson][:query]
      @lessons = Lesson.global_search(params[:lesson][:query])
        # if @lessons == []
        #   @lessons = Lesson.kinda_matching(query)
    else
      @lessons = Lesson.all
    end
    @markers = @lessons.geocoded.map do |lesson|
      {
        lat: lesson.latitude,
        lng: lesson.longitude,
        info_window: render_to_string(partial: "info_window", locals: { lesson: lesson }),
        image_url: helpers.asset_url("icons/#{lesson.instrument}Icon.png")
      }
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    @booking = Booking.new
    @reviews = @lesson.reviews.order(created_at: :desc)
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(params[:lesson])
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to lessons_path
  end

  private

  def lesson_params
    params.require(:lesson).permit(:instrument, :price, :level, :location, photos: [])
  end

end
