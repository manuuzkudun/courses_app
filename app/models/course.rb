class Course < ActiveRecord::Base
  include Votable

  belongs_to :professor
  validates :title, presence: true
end