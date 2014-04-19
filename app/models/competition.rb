class Competition < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :competitionassigments
  has_many :users, through: :competitionassigments
end
