class RenameCompetitionsMaintanersToCompetitionsMaintainers < ActiveRecord::Migration
  def change
    rename_table :competitions_maintaners, :competitions_maintainers
  end
end
