class CreateArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.boolean :grammy_winning
      t.integer :total_streams
      t.string :highest_charted_song

      t.timestamps
    end
  end
end
