class Professor < ActiveRecord::Base
  has_many :courses
  validates :email, presence: true

  def upvote!
    update!(votes: votes + 1 )
  end
end