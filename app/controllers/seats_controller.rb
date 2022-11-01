class SeatsController < ApplicationController
  #before_action :authorize_potential_customer, only: [:update]
  def index
    seats = Seat.page(page).per(per_page)
    render json: seats, status: :ok
  end

  def show
    seat = find_seat 
    render json: seat, status: :ok
  end

  def create
    seat = Seat.create!(seat_params)
    render json: seat, status: :ok
  end

  def update
    seat = find_seat 
    #bus = seat.bus.id...
    #customer_id..using the customer in session
    #seat_no
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
    render json: {error: "You must login as a customer to book"}, status: :unauthorized unless session[:user_role]==="customer" || session[:user_role]=== "admin"
  end

end
