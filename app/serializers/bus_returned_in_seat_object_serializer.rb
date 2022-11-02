class BusReturnedInSeatObjectSerializer < ActiveModel::Serializer
  attributes :id, :cost_per_seat, :plate_number 
end
