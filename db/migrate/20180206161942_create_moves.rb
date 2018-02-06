class CreateMoves < ActiveRecord::Migration[5.1]
  def change
    create_table :moves do |t|
      t.belongs_to :play, foreign_key: true
      t.string :request
      t.string :response

      t.timestamps
    end
  end
end
