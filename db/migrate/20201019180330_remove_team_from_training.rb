class RemoveTeamFromTraining < ActiveRecord::Migration[6.0]
  def change
    remove_column :trainings, :team, :string
  end
end
