class GenresController < ApplicationController
    def index
        @genres = Genre.all
        render json: @genres,
            include: [:songs],
            except: [:created_at, :updated_at],
            status: :ok
    end

    def create
        @genre = Genre.create genre_params
        render json: @genre, status: :created
    end

    def show
        @genre = Genre.find(params[:id])
        render json: @genre, 
            include: [:songs],
            except: [:created_at, :updated_at],
            status: :ok
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_params)
        render json: @genre, status: 204
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end
end
