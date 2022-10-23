puts "🌱🌱🌱 Seeding drivers 🌱🌱🌱"
d1 = Driver.create!(name: 'Jack Jacob', email: "jack@gmail.com", role: "driver", password_digest: "jack1234")
d2 = Driver.create!(name: 'Hellen Khalif', email: "hellen@gmail.com", role: "driver", password_digest: "hellen1234")
d3 = Driver.create!(name: 'Peter Molu', email: "peter@gmail.com", role: "driver", password_digest: "peter1234")
d4 = Driver.create!(name: 'Philo Miu', email: "philo@gmail.com", role:"driver", password_digest: "philo1234")
d5 = Driver.create!(name: 'Shah Jiko', email:"shah@gmail.com", role: "driver", password_digest: "shah1234")

puts "🌱🌱🌱 Drivers seeded 🌱🌱🌱 "

puts " seeding buses"

bus1 = Bus.create(plate_number: "KDJ 444H",driver_id: d1.id, no_of_seats: 42, cost_per_seat: 350, from: "Nairobi", to: "Nakuru", travel_date:Date.new(2022,10,18), travel_time: 1130, available: true)
bus2 = Bus.create(plate_number: "KDG 500Y",driver_id: d2.id, no_of_seats: 62, cost_per_seat: 1350, from: "Nairobi", to: "Mombasa", travel_date:Date.new(2022,10,19), travel_time: 830, available: true)
bus3 = Bus.create(plate_number: "KDB 678K",driver_id: d3.id, no_of_seats: 33, cost_per_seat: 650, from: "Kisumu", to: "Nakuru",travel_date:Date.new(2022,10,23), travel_time: 930, available: true)
bus4 = Bus.create(plate_number: "KDE 546R",driver_id: d4.id, no_of_seats: 51, cost_per_seat: 2350, from: "Mombasa", to: "Isiolo", travel_date:Date.new(2022,10,10), travel_time: 1330, available: true)
bus5 = Bus.create(plate_number: "KDA 765T",driver_id: d5.id, no_of_seats: 42, cost_per_seat: 300, from: "Nairobi", to: "Machakos", travel_date:Date.new(2022,10,8), travel_time: 1530, available: true)

puts " Done seeding buses"

puts "seeding customers"

cust1 = Customer.create(name: "Jane", email:"jane@gmail.com", phone_number: 723456456, role: "customer", password_digest:"jane1234")
cust2 = Customer.create(name: "Janet", email:"janet@gmail.com", phone_number: 722888645, role: "customer", password_digest:"janet1234")
cust3 = Customer.create(name: "Gilad", email:" gilad@gmail.com", phone_number: 720786637, role: "customer", password_digest:"gilad1234")
cust4 = Customer.create(name: "Matheus", email:"matheus@gmail.com", phone_number: 712738393, role: "customer", password_digest:"matheus1234")
cust5 = Customer.create(name: "Kingsley", email:"kingsley@gmail.com", phone_number: 787456388, role: "customer", password_digest:"kingsley1234")

puts "done seeding customers"


puts "seeding bookings"

booking1 = Booking.create(customer_id: cust1.id, bus_id: bus2.id)
booking2 = Booking.create(customer_id: cust3.id, bus_id: bus5.id)
booking3 = Booking.create(customer_id: cust4.id, bus_id: bus4.id)
booking4 = Booking.create(customer_id: cust2.id, bus_id: bus1.id)
booking5 = Booking.create(customer_id: cust5.id, bus_id: bus3.id)

puts "done seeding bookings"




