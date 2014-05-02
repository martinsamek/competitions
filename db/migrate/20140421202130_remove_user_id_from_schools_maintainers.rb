class RemoveUserIdFromSchoolsMaintainers < ActiveRecord::Migration
  def change
    remove_column :schools_maintainers, :user_id, :integer
  end
end
