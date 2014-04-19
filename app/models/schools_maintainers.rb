class SchoolsMaintainers < ActiveRecord::Base
  belongs_to :user
  belongs_to :school
end
