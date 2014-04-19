class AddDetailsToCompetitionAssigments < ActiveRecord::Migration
  def change
    add_column :competition_assigments, :user_grade, :integer
    add_column :competition_assigments, :teacher_name, :string
  end
end
