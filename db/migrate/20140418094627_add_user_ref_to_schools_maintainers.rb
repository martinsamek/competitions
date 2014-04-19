class AddUserRefToSchoolsMaintainers < ActiveRecord::Migration
  def change
    add_reference :schools_maintainers, :user, index: true
  end
end
