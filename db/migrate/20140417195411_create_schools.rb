class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :phone
      t.string :residence
      t.string :email
      t.string :school_type

      t.timestamps
    end
  end
end
