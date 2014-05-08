class Competition < ActiveRecord::Base
  has_many :competition_assigments
  has_many :competitors, through: :compatition_assignments, class_name: "User"

  has_and_belongs_to_many :maintainers,
                          :join_table => "competitions_maintainers",
                          :foreign_key => "competition_id",
                          :association_foreign_key => "maintainer_id",
                          :class_name => "User"

end
