class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end

  def index
    if params[:lesson].present? && params[:lesson][:query].present?
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
        lng: lesson.longitude
      }
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(params[:restaurant])
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
