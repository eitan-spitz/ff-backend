class CreateUserGames < ActiveRecord::Migration[6.0]
  def change
    create_table :user_games do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :level
      t.integer :final_score
      t.integer :score_in_round

      t.timestamps
    end
  end
end
