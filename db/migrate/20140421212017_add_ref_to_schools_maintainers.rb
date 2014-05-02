class AddRefToSchoolsMaintainers < ActiveRecord::Migration
  def change
    add_reference :schools_maintainers, :maintainer, index: true
  end
end
