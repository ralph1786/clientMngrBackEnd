class ApplicationController < ActionController::API
    # before_action :authorized

    def encode_token(payload)
        JWT.encode(payload, "your_secret")
    end

    def auth_header
        request.headers["Authorization"]
    end

    def decoded_token
        if auth_header
            token = auth_header.split(" ")[1]

            begin
                JWT.decode(token, "your_secret", true, algorithm: "HS256")
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_provider
        if decoded_token
            provider_id = decoded_token[0]["provider_id"]
            @provider = Provider.find_by(id: provider_id)
        end
    end

    def current_parent
        if decoded_token
            parent_id = decoded_token[0]["parent_id"]
            @parent = Parent.find_by(id: parent_id)
    end

    def logged_in?
        !!current_provider
    end

    def authorized
        render json: {message: "Sorry please log in!"}, status: :unauthorized unless logged_in?
    end

end
