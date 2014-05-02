class RemoveDetailsFromCompetitionMaintainers < ActiveRecord::Migration
  def change
    remove_column :competition_maintainers, :id, :integer
    remove_column :competition_maintainers, :created_at, :date
    remove_column :competition_maintainers, :updated_at, :date
    remove_column :competition_maintainers, :user_id, :integer
  end
end
