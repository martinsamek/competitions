class AddSchoolRefToSchoolsMaintainers < ActiveRecord::Migration
  def change
    add_reference :schools_maintainers, :school, index: true
  end
end
