class ApplicationController < ActionController::API
 #   before_action :logged_In?

=begin     def encode_token(payload)
        secret = Rails.application.credentials.secret_key_base
        JWT.encode(payload, "Flatiron", "HS256")
        # 3rd arg is optional if you want to use HS256 algo
        # payload is a hash/ an obj
    end

    def logged_In?
        # secret = Rails.application.credentials.secret_key_base
        headers = request.headers["Authorization"]
        # byebug
        token = headers.split(" ")[1]

        begin
            user_id = JWT.decode(token, "Flatiron", "HS256")[0]["user_id"]
            user = User.find(user_id)

        rescue
            # user is not found because token is not provided
            user = nil
        end

        # if user
        # else
        #   render json: {error: "Please Login!"}
        # end

        unless user
            render json: {error: "Please Login!"}
        end

        # render json: {error: "please Login!"} unless user

    end =end
end
