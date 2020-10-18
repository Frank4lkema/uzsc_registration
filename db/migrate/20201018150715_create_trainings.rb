class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.date :date
      t.string :start_hour
      t.string :end_hour
      t.integer :max_participants

      t.timestamps
    end
  end
end
