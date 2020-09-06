class CoursesController < ApplicationController
  def index
    @courses = Course.order(:title)
  end

  def create
    professor = Professor.find_or_create_by!(email: params[:email])
    Course.create!(title: params[:title], professor_id: professor.id)

    redirect_to root_path
  end

  def upvote
    course = Course.find(params[:id])
    course.upvote!
    
    redirect_to root_path
  end
end
