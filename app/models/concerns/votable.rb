module Votable
  extend ActiveSupport::Concern

  def upvote!
    update!(votes: votes + 1 )
  end
end