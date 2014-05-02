class RemoveRefFromCompetitionMaintainers < ActiveRecord::Migration
  def change
    remove_reference :competition_maintainers, :competition, index: true
  end
end
