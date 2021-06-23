class UsersController < ApplicationController

    skip_before_action :authenticate, only: [:create, :login]

    def index
        @users = User.all
        render json: @users, 
            include: [:playlists],
            status: :ok
    end

    def create
        @user = User.create user_params
        render json: @user, status: :created
    end

    def profile
        render json: @user, include: :playlists, status: :ok
    end

    def login
        @user = User.find_by username: params[:user][:username]
        if !@user
            render json: { error: 'Invalid username or password'}, status: :unauthorized
        else 
            if !@user.authenticate params[:user][:password]
                render json: {error: 'Invalid username or password'}, status: :unauthorized
            else 
                payload = { user_id: @user.id }
                secret = '123456789abcdef'
                @token = JWT.encode payload, secret
                render(
                    json: {
                        token: @token , 
                        user: @user,
                        playlists: @user.playlists
                    },
                    status: :ok
                )
            end
        end
    end
	
    def show
        @user = User.find(params[:id])
        render json: @user, status: :ok
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user, status: 204
    end

    private

    def user_params
        params.require(:user).permit(
            :username, 
            :password, 
            :authorized_user, 
            :email, 
            :first_name, 
            :last_name
        )
    end

end
