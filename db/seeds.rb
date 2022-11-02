puts "🌱 Seeding Drivers 🌱"
d1 = Driver.create!(name: 'Jack Jacob', email: "jack@gmail.com", role: "driver",phone_number:0700123456, password: "jack1234")
d2 = Driver.create!(name: 'Hellen Khalif', email: "hellen@gmail.com", role: "driver",phone_number:0700123456, password: "hellen1234")
d3 = Driver.create!(name: 'Peter Molu', email: "peter@gmail.com", role: "driver",phone_number:0700123456, password: "peter1234")
d4 = Driver.create!(name: 'Philo Miu', email: "philo@gmail.com", role:"driver",phone_number:0700123456, password: "philo1234")
d5 = Driver.create!(name: 'Shah Jiko', email:"shah@gmail.com", role: "driver",phone_number:0700123456, password: "shah1234")
puts"🌱 Done Seeding Drivers 🌱 "

puts "🌱 Seeding Customers 🌱"
cust1 = Customer.create!(name: "Jane", email:"jane@gmail.com", phone_number: 723456456, role: "customer", password:"jane1234")
cust2 = Customer.create!(name: "Janet", email:"janet@gmail.com", phone_number: 722888645, role: "customer", password:"janet1234")
cust3 = Customer.create!(name: "Gilad", email:"gilad@gmail.com", phone_number: 720786637, role: "customer", password:"gilad1234")
cust4 = Customer.create!(name: "Matheus", email:"matheus@gmail.com", phone_number: 712738393, role: "customer", password:"matheus1234")
cust5 = Customer.create!(name: "Kingsley", email:"kingsley@gmail.com", phone_number: 787456388, role: "customer", password:"kingsley1234")
puts "🌱 Done Seeding Customers 🌱"

puts "🌱 Seeding Admins 🌱🌱🌱"
Admin.create!(name: "superuser", email: "superuser@gmail.com", phone_number: 765432442, role: "admin", password: "superuser1234")
puts "🌱 Done Seeding Admins 🌱"





