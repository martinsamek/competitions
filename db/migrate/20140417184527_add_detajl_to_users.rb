class AddDetajlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :string
    add_column :users, :id_card_number, :string
  end
end
