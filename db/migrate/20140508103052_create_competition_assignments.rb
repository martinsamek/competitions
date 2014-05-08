class CreateCompetitionAssignments < ActiveRecord::Migration
  def change
    create_table :competition_assignments do |t|
      t.integer :user_id
      t.integer :school_id
      t.integer :competition_id
      t.integer :user_grade
      t.string :teacher_name, limit: 100

      t.timestamp
    end
  end
end
