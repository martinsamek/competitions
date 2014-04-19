class CreateCompetitionMaintainers < ActiveRecord::Migration
  def change
    create_table :competition_maintainers do |t|

      t.timestamps
    end
  end
end
