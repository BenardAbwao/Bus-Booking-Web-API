class SeatsController < ApplicationController
  before_action :authorize_potential_customer, only: [:update]
  def index
    seats = Seat.all 
    render json: seats, status: :ok
  end

  def show
    seat = find_seat 
    render json: seat, status: :ok
  end

  def update
    seat = find_seat 
    seat.update(seat_params)
    render json: seat, status: :ok
  end

  private
  def seat_params
    params.permit(:bus_id, :seat_no, :is_booked)
  end

  def find_seat
    Seat.find(params[:id])
  end

  def authorize_potential_customer
    render json: {error: "You must login as a customer to book"}, status: :unauthorized unless session[:user_role]=== "customer"
  end

end
