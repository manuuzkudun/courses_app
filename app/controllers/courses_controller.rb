class CoursesController < ApplicationController
  def index
    @courses = Course.order(:title)
  end

  def create
    begin
      professor = Professor.find_or_create_by!(email: params[:email])
      course = Course.create!(title: params[:title], professor_id: professor.id)
      redirect_to root_path, notice: "'#{course.title.capitalize}' course created"
    rescue => e
      redirect_to root_path, notice: e.message
    end
  end

  def upvote
    course = Course.find(params[:id])
    course.upvote!
    
    redirect_to root_path
  end
end
