class User < ActiveRecord::Base
  has_secure_password

  has_and_belongs_to_many :schools,
                          :join_table => "schools_maintainers",
                          :foreign_key => "maintainer_id",
                          :association_foreign_key => "school_id"


  has_and_belongs_to_many :competitions,
                          :join_table => "competition_maintainers",
                          :foreign_key => "maintainer_id",
                          :association_foreign_key => "competition_id"

  # vztah medzi users a schools cez competition_assigments

  has_many :competitionassigments
  has_many :schools, through: :competitionassigments
 # has_many :competitions, through: :CompetitionAssigments

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

end
