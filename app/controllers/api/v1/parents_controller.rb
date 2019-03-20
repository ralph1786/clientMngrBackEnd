class Api::V1::ParentsController < ApplicationController

    def index
        @parent = Parent.all
        render json: @parent
    end


    def create
       @parent = Parent.create(parent_params)
       render json: @parent
    end

    private

    def parent_params
        params.require(:parent).permit(:name, :username, :password)
    end
end
