class Api::V1::ProvidersController < ApplicationController
    # skip_before_action :authorized, only: [:create]

    def index
        @provider = Provider.all
        render json: @provider
    end

    def dashboard
        render json: {provider: ProviderSerializer.new(current_provider)}, status: :accepted
    end

    def create
        @provider = Provider.create(provider_params)
        if @provider.valid?
            @token = encode_token(provider_id: @provider.id)
            render json: {provider: ProviderSerializer.new(@provider), jwt: @token}, status: :created
        else
            render json: {error: "Provider was not created"}, status: :not_acceptable
        end
    end

    private
    
    def provider_params
        params.require(:provider).permit(:name, :username, :password)
    end
end
