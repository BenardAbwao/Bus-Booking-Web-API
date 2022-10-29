class DriversController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        drivers = Driver.all
        render json: drivers 
    end

    def create
        driver = Driver.create(driver_params)
        render json: driver, status: :ok
    end

    def show
        driver = Driver.find(params[:id])
        render json: driver, status: :ok
    end

    def destroy
      driver = Driver.find(params[:id])
      driver.destroy 
      head :no_content
    end

    private

    def driver_params
      params.permit(:name,:email, :role, :password, :phone_number)
    end

    def render_not_found_response
      render json: {error: "Driver was not found"}, status: :not_found
    end

end
