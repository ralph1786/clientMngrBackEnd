class Api::V1::AuthController < ApplicationController
    # skip_before_action :authorized, only: [:create]

    def create 
        @provider = Provider.find_by(username: provider_login_params[:username])
        if @provider && @provider.authenticate(provider_login_params[:password])
            token = encode_token({provider_id: @provider.id})
            render json: {provider: ProviderSerializer.new(@provider), jwt: token}, status: :accepted
        else
            render json: {message: "Invalid credentials, please check and try again."}, status: :unauthorized
        end
    end

    private

    def provider_login_params
        params.require(:provider).permit(:username, :password)
    end


end
