class RenameNametoTeamOnTrainingTeam < ActiveRecord::Migration[6.0]
  def change
    rename_column :training_teams, :name, :team
  end
end
