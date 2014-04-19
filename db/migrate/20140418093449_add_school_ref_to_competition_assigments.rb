class AddSchoolRefToCompetitionAssigments < ActiveRecord::Migration
  def change
    add_reference :competition_assigments, :school, index: true
  end
end
