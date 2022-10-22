class DriversController < ApplicationController
    def index
        drivers = Driver.all
        render json: drivers 
    end

    def show
        drivers = Driver.find(params[:id])
        render json: drivers
rescue ActiveRecord::RecordNotFound
        render json: "Driver not found", status: :not_found
    end

end
