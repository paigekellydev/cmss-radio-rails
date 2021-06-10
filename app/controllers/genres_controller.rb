class GenresController < ApplicationController
    def index
        @genres = Genre.all
        render json: 
            @genres, 
            status: :ok
    end

    def create
        @genre = Genre.create genre_params
        render json: @genre, status: :created
    end

    def show
        @genre = Genre.find(params[:id])
        render json: @genre, status: :ok
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end
end
