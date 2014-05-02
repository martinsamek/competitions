class RemoveIdFromSchoolsMaintainers < ActiveRecord::Migration
  def change
    remove_column :schools_maintainers, :id, :integer
  end
end
