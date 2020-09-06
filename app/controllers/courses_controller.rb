class CoursesController < ApplicationController
  def index
    @courses = Course.order(:title)
  end

  def upvote
    course = Course.find(params[:id])
    course.upvote!
    
    redirect_to root_path
  end
end
