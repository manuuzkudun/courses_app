class Professor < ActiveRecord::Base
  has_many :courses

  def upvote!
    update!(votes: votes + 1 )
  end
end