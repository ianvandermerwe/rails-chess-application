class CreateChessGames < ActiveRecord::Migration[5.0]
  def up
    create_table :chess_games do |t|
      t.text :game_info_json
      t.references :users, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :chess_games
  end
end
