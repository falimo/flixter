class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_course, only: [:show]


  def show
  end

  private

  def require_authorized_for_current_course
    unless current_user.enrolled_in?(current_lesson.section.course)
      redirect_to course_path(current_lesson.section.course), alert: "Yo, please enroll in the course to see the lessons"

      # render plain: "Unauthorized", status: :unauthorized
    end
  end


  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end



end
