class AddUserRefToCompetitionMaintainers < ActiveRecord::Migration
  def change
    add_reference :competition_maintainers, :user, index: true
  end
end
