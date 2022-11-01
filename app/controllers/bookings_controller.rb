class BookingsController < ApplicationController
    before_action :authorize, only: [:create]
  def index
    bookings = Booking.page(page).per(per_page)
    render json: bookings, status: :ok
  end

  def show
    booking = find_booking 
    render json: booking, status: :ok
  end

  def create
    seat = Seat.find(params[:seat_id])
    bus_id = seat.bus.id
    booking = Booking.create!(bus_id: bus_id, 
                              customer_id: params[:customer_id],
                              seat_no: params[:seat_no]
                              )
    render json: booking, status: :created
  end

  private
  def find_booking
    Booking.find(params[:id])
  end

  def booking_params
    params.permit(:bus_id, :customer_id, :seat_no)
  end

  def authorize
    render json: {error: "You must be logged in to perfom ths action"}, status: :unauthorized unless session.include? :user_id
  end
end
