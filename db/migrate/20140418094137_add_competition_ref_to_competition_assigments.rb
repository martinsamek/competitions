class AddCompetitionRefToCompetitionAssigments < ActiveRecord::Migration
  def change
    add_reference :competition_assigments, :competition, index: true
  end
end
