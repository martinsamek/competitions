class CreateCompetitionAssigments < ActiveRecord::Migration
  def change
    create_table :competition_assigments do |t|

      t.timestamps
    end
  end
end
