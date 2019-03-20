class Api::V1::ChildrenController < ApplicationController
    # before_action :authorized
    def index 
        @children = Child.all
        render json: @children
    end

    def show
        @child = Child.find(params[:id])
        render json: @child
    end

    def create
        # @child = Child.create(child_params)
        # render json: @child
        @child = Child.new(child_params)

        if @child.save 
            render json: @child, status: :created
        else
            render json: @child.errors
        end
    end

    def update
        @child = Child.find(params[:id])
        @child.update(child_params)
    end

    def destroy
        @child = Child.find(params[:id])
        @child.destroy
    end


    private

    def child_params
        params.require(:child).permit(:name, :image, :age, :address, :allergies, :balance, :provider_id, :parent_id)
    end
end
