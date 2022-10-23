class BookingsController < ApplicationController
  def index
    bookings = Booking.all 
    render json: bookings, status: :ok
  end
end
