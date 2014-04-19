class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :birthday, :date
    add_column :users, :phone, :string
    add_column :users, :residence, :string
  end
end
