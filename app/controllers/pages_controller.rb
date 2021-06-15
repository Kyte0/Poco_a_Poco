class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @lessons = Lesson.all.shuffle.pop(2)
    @newest_lesson = Lesson.all.last
  end
end
