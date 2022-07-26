class SpicesController < ApplicationController

    def index 
        spices = Spice.all 
        render json: spices
    end

    def create
        render json: Spice.create(spice_params)
    end

    def update
        spice = find_spice
        spice.update!(spice_params)
        render json: spice
    end

    def create
        render json: Spice.create(spice_params)
    end

    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

    def find_spice
        spice = Spice.find(params[:id])
    end


end
