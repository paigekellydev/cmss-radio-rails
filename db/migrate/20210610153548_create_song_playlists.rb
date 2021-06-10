class CreateSongPlaylists < ActiveRecord::Migration[6.1]
  def change
    create_table :song_playlists do |t|
      t.references :song, null: false, foreign_key: true
      t.references :playlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
