class Api::V1::ParentAuthController < ApplicationController

    def create 
        @parent = Parent.find_by(username: parent_login_params[:username])
        if @parent && @parent.authenticate(parent_login_params[:password])
            token = encode_token({parent_id: @parent.id})
            render json: {parent: ParentSerializer.new(@parent), jwt: token}, status: :accepted
        else
            render json: {message: "Invalid credentials, please check and try again."}, status: :unauthorized
        end
    end

    private

    def parent_login_params
        params.require(:parent).permit(:username, :password)
    end
end
