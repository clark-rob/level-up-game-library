class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :developer
      t.date :year
      t.string :copy
      t.string :system
      t.boolean :multiplayer

      t.timestamps
    end
  end
end
