class SongPlaylistsController < ApplicationController
    def index
        @song_playlists = Song_Playlist.all
        render json: 
            @song_playlists, 
            status: :ok
    end

    def create
        @song_playlist = Song_Playlist.create song_playlist_params
        render json: @song_playlist, status: :created
    end

    def show
        @song_playlist = Song_Playlist.find(params[:id])
        render json: @song_playlist, status: :ok
    end

    private

    def song_playlist_params
        params.require(:song_playlist).permit(:song_id, :playlist_id)
    end
end
