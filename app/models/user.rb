class User < ActiveRecord::Base
  has_secure_password

  has_and_belongs_to_many :schools
  has_and_belongs_to_many :competitions

  # vztah medzi users a schools cez competition_assigments

  has_many :CompetitionAssigments
  has_many :schools, through: :CompetitionAssigments
  has_many :competitions, through: :CompetitionAssigments

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email

  validates_uniqueness_of :email

end
