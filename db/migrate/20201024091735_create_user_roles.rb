class CreateUserRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_roles do |t|
      t.string :role_type
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
