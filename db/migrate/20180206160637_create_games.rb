class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :state, default: 0
      t.string :join_code, limit: 8

      t.timestamps
    end
    add_index :games, :join_code
  end
end
