Rails.application.routes.draw do
  root 'courses#index'

  resources :courses, only: [:index, :create]
  patch 'courses/:id/upvote', to: 'courses#upvote', as: :upvote_course
  patch 'professors/:id/upvote', to: 'professors#upvote', as: :upvote_professor
end
