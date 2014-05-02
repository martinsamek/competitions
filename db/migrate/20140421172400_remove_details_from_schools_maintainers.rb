class RemoveDetailsFromSchoolsMaintainers < ActiveRecord::Migration
  def change
    remove_column :schools_maintainers, :created_at, :date
    remove_column :schools_maintainers, :updated_at, :date
  end
end
