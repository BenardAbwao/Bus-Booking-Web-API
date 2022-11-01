class BusReturnedWithBookingSerializer < ActiveModel::Serializer
  attributes :plate_number, :cost_per_seat, :from, :to, :travel_date, :travel_time
end
