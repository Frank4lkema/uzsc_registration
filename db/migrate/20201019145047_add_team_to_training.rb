class AddTeamToTraining < ActiveRecord::Migration[6.0]
  def change
    add_column :trainings, :team, :jsonb
  end
end
