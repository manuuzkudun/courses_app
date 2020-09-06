class Course < ActiveRecord::Base
  belongs_to :professor
  validates :title, presence: true

  def upvote!
    update!(votes: votes + 1 )
  end
end