class SongsController < ApplicationController
    def index
        @songs = Song.all
        render json: @songs,
            include: [:genre, :artist],
            except: [:created_at, :updated_at],
            status: :ok
    end

    def create
        @song = Song.create song_params
        render json: @song, status: :created
    end

    def show
        @song = Song.find(params[:id])
        render json: @song, 
            include: [genre: [:name], artist:[:name]],
            except: [:created_at, :updated_at],
            status: :ok
    end

    private

    def song_params
        params.require(:song).permit(:title)
    end
end
