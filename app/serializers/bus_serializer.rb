class BusSerializer < ActiveModel::Serializer
  attributes :id, :plate_number, :no_of_seats, :cost_per_seat,
   :from, :to, :time_of_travel, :available
end
