class BookingsController < ApplicationController
    before_action :authorize, only: [:create]
  def index
    bookings = Booking.all
    binding.break
    render json: bookings, status: :ok
  end

  def show
    booking = find_booking 
    render json: booking, status: :ok
  end

  def create
    booking = Booking.create!(booking_params)
    render json: booking
  end

  private
  def find_booking
    Booking.find(params[:id])
  end

  def booking_params
    params.permit(:bus_id, :customer_id)
  end

  def authorize
    render json: {error: "You must be logged in to perfom ths action"}, status: :unauthorized unless session.include? :user_id
  end
end
