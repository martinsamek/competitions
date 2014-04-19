class School < ActiveRecord::Base
  has_and_belongs_to_many :users

  has_many :CompetitionAssigments
  has_many :users, through: :CompetitionAssigments
end
