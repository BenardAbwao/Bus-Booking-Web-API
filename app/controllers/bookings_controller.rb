class BookingsController < ApplicationController
  def index
    bookings = Booking.all
    render json: bookings, status: :ok
  end

  def show
    booking = find_booking 
    render json: booking, status: :ok
  end

  private
  def find_booking
    Booking.find(params[:id])
  end
end
