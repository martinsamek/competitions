class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name, limit: 50
      t.string :phone, limit: 20
      t.string :residence, limit: 150
      t.string :email, limit: 100
      t.integer :school_type
    end
  end
end
