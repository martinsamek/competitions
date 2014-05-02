class AddDetailsToCompetitionMaintainers < ActiveRecord::Migration
  def change
    add_reference :competition_maintainers, :competition, index: true
  end
end
