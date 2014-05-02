class AddMaintainerIdToSchoolsMaintainers < ActiveRecord::Migration
  def change
    add_column :schools_maintainers, :maintainer_id, :integer
  end
end
