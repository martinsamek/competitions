class RemoveIdFromCompetitionMaintainers < ActiveRecord::Migration
  def change
    remove_column :competition_maintainers, :id, :integer
  end
end
