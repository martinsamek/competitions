class Competition < ActiveRecord::Base
  #has_many :competitionassigments

  has_and_belongs_to_many :users,
                          :join_table => "competition_maintainers",
                          :foreign_key => "competition_id",
                          :association_foreign_key => "maintainer_id"

  # has_many :users, through: :competitionassigments
end
