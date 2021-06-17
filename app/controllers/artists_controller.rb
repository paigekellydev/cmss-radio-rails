class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
        render json: 
            @artists, 
            status: :ok
    end

    def create
        @artist = Artist.create artist_params
        render json: @artist, status: :created
    end

    def show
        @artist = Artist.find(params[:id])
        render json: @artist, status: :ok
    end

    def update
        @artist = Artist.find(params[:id])
        @artist.update(artist_params)
        render json: @artist, status: 204
    end

    private

    def artist_params
        params.require(:artist).permit(:name)
    end
end
