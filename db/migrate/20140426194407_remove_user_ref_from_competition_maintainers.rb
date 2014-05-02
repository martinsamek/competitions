class RemoveUserRefFromCompetitionMaintainers < ActiveRecord::Migration
  def change
    remove_reference :competition_maintainers, :user, index: true
  end
end
