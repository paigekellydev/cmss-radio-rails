class UsersController < ApplicationController
    def index
        @users = User.all
        render json: 
            @users, 
            status: :ok
    end

    def create
        @user = User.create user_params
        render json: @user, status: :created
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

    # def update_user_params
    #     params.permit(
    #         :username, 
    #         :password, 
    #         :authorized_user, 
    #         :email, 
    #         :first_name, 
    #         :last_name
    #     )
    # end

end
