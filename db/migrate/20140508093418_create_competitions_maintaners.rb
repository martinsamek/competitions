class CreateCompetitionsMaintaners < ActiveRecord::Migration
  def change
    create_table :competitions_maintaners, id:false do |t|
      t.integer :maintainer_id
      t.integer :competition_id
    end
  end
end
