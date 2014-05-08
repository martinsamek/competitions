class CreateSchoolsMaintainers < ActiveRecord::Migration
  def change
    create_table :schools_maintainers, id:false do |t|
      t.integer :maintainer_id
      t.integer :school_id
    end
  end
end
