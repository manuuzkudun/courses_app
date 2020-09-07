class Professor < ActiveRecord::Base
  include Votable

  has_many :courses
  validates :email, presence: true
end