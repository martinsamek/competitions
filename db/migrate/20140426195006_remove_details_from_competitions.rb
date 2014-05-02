class RemoveDetailsFromCompetitions < ActiveRecord::Migration
  def change
    remove_reference :competitions, :competitionmaintainer, index: true
  end
end
