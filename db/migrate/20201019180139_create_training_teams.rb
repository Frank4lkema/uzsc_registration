class CreateTrainingTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :training_teams do |t|
      t.string :name
      t.references :training, null: false, foreign_key: true

      t.timestamps
    end
  end
end
