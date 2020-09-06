class Course < ActiveRecord::Base
  belongs_to :professor

  def upvote!
    update!(votes: votes + 1 )
  end
end