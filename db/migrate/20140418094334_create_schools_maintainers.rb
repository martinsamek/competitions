class CreateSchoolsMaintainers < ActiveRecord::Migration
  def change
    create_table :schools_maintainers do |t|

      t.timestamps
    end
  end
end
