class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :time_to_complete_round

      t.timestamps
    end
  end
end
