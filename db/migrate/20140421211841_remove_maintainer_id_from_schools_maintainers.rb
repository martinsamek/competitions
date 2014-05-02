class RemoveMaintainerIdFromSchoolsMaintainers < ActiveRecord::Migration
  def change
    remove_column :schools_maintainers, :maintainer_id, :integer
  end
end
