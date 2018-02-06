class CreatePlays < ActiveRecord::Migration[5.1]
  def change
    create_table :plays do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.string :memory, limit: 8
      t.integer :role
      t.integer :result

      t.timestamps
    end
    add_index :plays, :role
    add_index :plays, :result
  end
end
