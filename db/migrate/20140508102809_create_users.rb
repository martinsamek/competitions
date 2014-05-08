class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, limit: 100
      t.string :password_digest, limit: 100
      t.boolean :admin, defaul: false
      t.string :first_name, limit: 100
      t.string :last_name, limit: 100
      t.date :birthday
      t.string :phone, limit: 20
      t.string :residence, limit: 150
      t.string :id_card_number, limit: 15

      t.timestamps
    end
  end
end
