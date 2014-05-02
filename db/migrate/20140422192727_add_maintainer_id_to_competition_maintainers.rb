class AddMaintainerIdToCompetitionMaintainers < ActiveRecord::Migration
  def change
    add_column :competition_maintainers, :maintainer_id, :integer
  end
end
