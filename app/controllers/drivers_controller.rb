class DriversController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        drivers = Driver.all
        render json: drivers 
    end

    def create
      if(params[:role]=== driver)
        driver = Driver.create(driver_params)
        render json: driver, status: :ok
      else
        return null
      end
    end

    def show
        driver = Driver.find(params[:id])
        render json: driver, status: :ok
    end

    private

    def driver_params
      params.permit(:name, :role)
    end

    def render_not_found_response
      render json: {error: "Driver was not found"}, status: :not_found
    end

end
