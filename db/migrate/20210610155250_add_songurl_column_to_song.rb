class AddSongurlColumnToSong < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :song_url, :string
  end
end
