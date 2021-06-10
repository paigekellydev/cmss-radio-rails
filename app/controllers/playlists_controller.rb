class PlaylistsController < ApplicationController
    def index
        @playlists = Playlist.all
        render json: 
            @playlists, 
            status: :ok
    end

    def create
        @playlist = Playlist.create playlist_params
        render json: @playlist, status: :created
    end

    def show
        @playlist = Playlist.find(params[:id])
        render json: @playlist, status: :ok
    end

    private

    def playlist_params
        params.require(:playlist).permit(:name, :user_id)
    end
end
