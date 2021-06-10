class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre
  has_many :song_playlists
  has_many :playlists, through: :song_playlists
end
