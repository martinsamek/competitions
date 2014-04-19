class AddUserRefToCompetitionAssigments < ActiveRecord::Migration
  def change
    add_reference :competition_assigments, :user, index: true
  end
end
