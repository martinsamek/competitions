class School < ActiveRecord::Base
  has_many :competitionassigments
  has_many :users, through: :competitionassigments

  has_and_belongs_to_many :users,
                          :join_table => "schools_maintainers",
                          :foreign_key => "school_id",
                          :association_foreign_key => "maintainer_id"


end
