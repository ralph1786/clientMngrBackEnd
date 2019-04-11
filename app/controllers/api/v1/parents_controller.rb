class Api::V1::ParentsController < ApplicationController

    def index
        @parent = Parent.all
        render json: @parent
    end

    def parent_dashboard
        render json: {parent: ParentSerializer.new(current_parent)}, status: :accepted
    end

    def create
        @parent = Parent.create!(parent_params)
        if @parent.valid?
            @token = encode_token(parent_id: @parent.id)
            render json: {parent: ParentSerializer.new(@parent), jwt: @token}, status: :created
        else
            render json: {error: "Parent was not created"}, status: :not_acceptable
        end
    end

    private

    def parent_params
        params.require(:parent).permit(:name, :username, :password)
    end
end
