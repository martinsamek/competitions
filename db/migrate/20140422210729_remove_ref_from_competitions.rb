class RemoveRefFromCompetitions < ActiveRecord::Migration
  def change
    remove_reference :competitions, :competitionmaintainers, index: true
  end
end
