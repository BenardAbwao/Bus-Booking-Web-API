class BusesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  def index
    buses = Bus.all 
    render json: buses, status: :ok
  end

  def show
    bus = find_bus
    render json: bus, status: :ok
  end

  def create
    bus = Bus.create(bus_params)
    render json: bus, status: :created 
  end

  def update
    bus = find_bus 
    bus.update(bus_params) 
    render json: bus, status: :ok
  end

  def destroy
    bus = find_bus
    bus.destroy
    head :no_content
  end

  private

  def render_not_found_response
    render json: {error: "Bus not found"}, status: :not_found
  end

  def bus_params
    params.permit(:plate_number, :no_of_seats, :cost_per_seat, :from, :to, 
    :time_of_travel, :available)
  end

  def render_unprocessable_entity_response(exception)
    render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
  end

  def find_bus
    render json: Bus.find(params[:id]), status: :ok
  end
end






 
