class AddIdToSchoolsMaintainers < ActiveRecord::Migration
  def change
    add_column :schools_maintainers, :id, :integer
  end
end
