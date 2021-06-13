class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session

    before_action :authenticate

    def authenticate
        auth_header = request.headers[:Authorization]
        if !auth_header
            render json: { error: 'Auth bearer token header must be present' }, status: :forbidden
        else
            token = auth_header.split(' ')[1]
            secret = '123456789abcdef'
            begin
                decoded_token = JWT.decode token, secret
                payload = decoded_token[0]
                @user = User.find payload['user_id']
            rescue
                render json: {error: 'Bad token'}, status: :forbidden
            end
        end
    end

end
