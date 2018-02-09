class CreatePlays < ActiveRecord::Migration[5.1]
  def change
    create_table :plays do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.string :goal, limit: 8
      t.integer :role, default: 0
      t.integer :result, default: 0

      t.timestamps
    end
    add_index :plays, :role
    add_index :plays, :result
  end
end
