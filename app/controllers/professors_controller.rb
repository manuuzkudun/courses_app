class ProfessorsController < ApplicationController  
    def upvote
      professor = Professor.find(params[:id])
      professor.upvote!
      
      redirect_to root_path
    end
  end
  