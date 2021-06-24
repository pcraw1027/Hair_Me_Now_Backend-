# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Customer.destroy_all
Service.destroy_all
Price.destroy_all
Chair.destroy_all
Product.destroy_all
PurchaseCommentRating.destroy_all
ProductPurchase.destroy_all
Stylist.destroy_all
User.destroy_all
AppointmentCommentRating.destroy_all
Appointment.destroy_all
Salon.destroy_all

us1 = User.create(username: "Peter1027", password: "Danylo1027", user_type: "customer")
us2 = User.create(username: "Danylo1024", password: "Daddy1024", user_type: "customer")
us3 = User.create(username: "HesMan95", password: "WhitePlains", user_type: "stylist")
us4 = User.create(username: "Barbara95", password: "WhitePlains", user_type: "stylist")
us5 = User.create(username: "HillmanIMP", password: "1970sCar", user_type: "customer")
us6 = User.create(username: "TommyJohn", password: "1970sCar", user_type: "customer")
us7 = User.create(username: "BoldBrass", password: "1970sCar", user_type: "customer")
us8 = User.create(username: "IzzyMann", password: "1970sCar", user_type: "customer")
us9 = User.create(username: "BrentMeister", password: "1970sCar", user_type: "customer")
us10 = User.create(username: "TimCanterbury", password: "1970sCar", user_type: "customer")


sy1 = Stylist.create(first_name: "Hess", last_name: "Hess", user_id: us3.id, phone_num: "(555) 999-9999", gender_service: "male", ethnicity_service: "all", address_1: "95 Fisher Ave", city: "White Plains", zip_code: "99999", image: "https://i.imgur.com/Kz0FODG.png")
sy2 = Stylist.create(first_name: "Barbara", last_name: "HairDresser", user_id: us4.id, phone_num: "(555) 999-9999", gender_service: "female", ethnicity_service: "black", address_1: "95 Fisher Ave", city: "White Plains", zip_code: "99999", image: "https://i.imgur.com/F1Du6QY.jpg")

ct1 = Customer.create(first_name: "Peter", last_name: "Hess", user_id: us1.id, phone_num: "(555) 999-9999", gender: "male", ethnicity: "black")
ct2 = Customer.create(first_name: "Danylo", last_name: "Hess", user_id: us2.id, phone_num: "(555) 999-9999", gender: "male", ethnicity: "black")
ct3 = Customer.create(first_name: "Harry", last_name: "Hillman", user_id: us5.id, phone_num: "(555) 999-9999", gender: "male", ethnicity: "black")
ct4 = Customer.create(first_name: "Tommy", last_name: "Johnson", user_id: us6.id, phone_num: "(555) 999-9999", gender: "male", ethnicity: "black")
ct5 = Customer.create(first_name: "Ricardo", last_name: "Tubbs", user_id: us7.id, phone_num: "(555) 999-9999", gender: "male", ethnicity: "black")
ct6 = Customer.create(first_name: "Izzy", last_name: "Izzy", user_id: us8.id, phone_num: "(555) 999-9999", gender: "male", ethnicity: "black")
ct7 = Customer.create(first_name: "David", last_name: "Brent", user_id: us9.id, phone_num: "(555) 999-9999", gender: "male", ethnicity: "black")
ct8 = Customer.create(first_name: "Tim", last_name: "Canterbury", user_id: us10.id, phone_num: "(555) 999-9999", gender: "male", ethnicity: "black")


sv1 = Service.create(name: "Fade", description: "Fade", image: "https://i.imgur.com/5oa90iK.jpg")
sv2 = Service.create(name: "Flat Top", description: "Flat Top", image: "https://i.imgur.com/5oa90iK.jpgg")
sv3 = Service.create(name: "Light Taper Fade", description: "Light Taper Fade", image: "https://i.imgur.com/5oa90iK.jpg")
sv4 = Service.create(name: "High Fade", description: "High Fade", image: "https://i.imgur.com/5oa90iK.jpg")
sv5 = Service.create(name: "Short Sides w/ Medium Top", description: "Short Sides w/ Medium Top", image: "https://i.imgur.com/5oa90iK.jpg")
sv6 = Service.create(name: "Short Afro Mohawk", description: "Short Afro Mohawk", image: "https://i.imgur.com/jISfqtM.jpg") 
sv7 = Service.create(name: "Natural Curly Bob", description: "Natural Curly Bob", image: "https://i.imgur.com/8FJwfY7.jpg")
sv8 = Service.create(name: "Straight Hair", description: "Straight Hair", image: "https://i.imgur.com/Dk5kr6I.jpg")
sv9 = Service.create(name: "Short Purple Balayage", description: "Short Purple Balayage", image: "https://i.imgur.com/YVSF2b9.jpg")
sv10 = Service.create(name: "Short Weave Bowl Cut", description: "Short Weave Bowl Cut", image: "https://i.imgur.com/sPDbFgX.jpg")

pr1 = Price.create(service_id: sv1.id, stylist_id: sy1.id, amount: 25.99, image: sv1.image, current: true)
pr2 = Price.create(service_id: sv2.id, stylist_id: sy1.id, amount: 23.99, image: sv2.image, current: true)
pr3 = Price.create(service_id: sv3.id, stylist_id: sy1.id, amount: 27.99, image: sv3.image, current: true)
pr4 = Price.create(service_id: sv4.id, stylist_id: sy1.id, amount: 30.99, image: sv4.image, current: true)
pr5 = Price.create(service_id: sv5.id, stylist_id: sy1.id, amount: 33.99, image: sv5.image, current: true)
pr6 = Price.create(service_id: sv6.id, stylist_id: sy2.id, amount: 45.99, image: sv6.image, current: true)
pr7 = Price.create(service_id: sv7.id, stylist_id: sy2.id, amount: 47.99, image: sv7.image, current: true)
pr8 = Price.create(service_id: sv8.id, stylist_id: sy2.id, amount: 49.99, image: sv8.image, current: true)
pr9 = Price.create(service_id: sv9.id, stylist_id: sy2.id, amount: 51.99, image: sv9.image, current: true)
pr10 = Price.create(service_id: sv10.id, stylist_id: sy2.id, amount: 55.99, image: sv10.image, current: true)

ap1 = Appointment.create(date: Date.new(2021,06,21), time: Time.new(2021,06,21,11,0,0, "+00:00"), customer_id: ct1.id, stylist_id: sy1.id, confirmed: false, completed: true, price_id: pr1.id)
ap2 = Appointment.create(date: Date.new(2021,06,22), time: Time.new(2021,06,22,12,30,0, "+00:00"), customer_id: ct2.id, stylist_id: sy2.id, confirmed: false, completed: true, price_id: pr2.id)
ap3 = Appointment.create(date: Date.new(2021,06,23), time: Time.new(2021,06,23,12,0,0, "+00:00"), customer_id: ct1.id, stylist_id: sy1.id, confirmed: true, completed: false, price_id: pr3.id)
ap4 = Appointment.create(date: Date.new(2021,06,24), time: Time.new(2021,06,24,13,30,0, "+00:00"), customer_id: ct2.id, stylist_id: sy2.id, confirmed: true, completed: false, price_id: pr4.id)
ap5 = Appointment.create(date: Date.new(2021,06,24), time: Time.new(2021,06,24,10,0,0, "+00:00"), customer_id: ct1.id, stylist_id: sy1.id, confirmed: true, completed: false, price_id: pr5.id)
ap6 = Appointment.create(date: Date.new(2021,06,24), time: Time.new(2021,06,24,15,0,0, "+00:00"), customer_id: ct2.id, stylist_id: sy2.id, confirmed: true, completed: false, price_id: pr6.id)
ap7 = Appointment.create(date: Date.new(2021,06,25), time: Time.new(2021,06,25,15,30,0, "+00:00"), customer_id: ct1.id, stylist_id: sy2.id, confirmed: false, completed: false, price_id: pr7.id)
ap8 = Appointment.create(date: Date.new(2021,06,25), time: Time.new(2021,06,25,14,0,0, "+00:00"), customer_id: ct2.id, stylist_id: sy1.id, confirmed: false, completed: false, price_id: pr8.id)
ap9 = Appointment.create(date: Date.new(2021,06,26), time: Time.new(2021,06,26,16,0,0, "+00:00"), customer_id: ct1.id, stylist_id: sy1.id, confirmed: false, completed: false, price_id: pr9.id)
ap10 = Appointment.create(date: Date.new(2021,06,28), time: Time.new(2021,06,28,18,0,0, "+00:00"), customer_id: ct2.id, stylist_id: sy2.id, confirmed: false, completed: false, price_id: pr10.id)
ap11 = Appointment.create(date: Date.new(2021,06,12), time: Time.new(2021,06,12,10,0,0, "+00:00"), customer_id: ct1.id, stylist_id: sy1.id, confirmed: true, completed: true, price_id: pr1.id)
ap12 = Appointment.create(date: Date.new(2021,06,12), time: Time.new(2021,06,12,11,30,0, "+00:00"), customer_id: ct2.id, stylist_id: sy2.id, confirmed: true, completed: true, price_id: pr2.id)
ap13 = Appointment.create(date: Date.new(2021,06,14), time: Time.new(2021,06,14,15,0,0, "+00:00"), customer_id: ct1.id, stylist_id: sy1.id, confirmed: true, completed: true, price_id: pr3.id)
ap14 = Appointment.create(date: Date.new(2021,06,14), time: Time.new(2021,06,14,14,30,0, "+00:00"), customer_id: ct2.id, stylist_id: sy2.id, confirmed: true, completed: true, price_id: pr4.id)
ap15 = Appointment.create(date: Date.new(2021,06,14), time: Time.new(2021,06,14,9,30,0, "+00:00"), customer_id: ct1.id, stylist_id: sy1.id, confirmed: true, completed: true, price_id: pr5.id)
ap16 = Appointment.create(date: Date.new(2021,06,14), time: Time.new(2021,06,14,16,0,0, "+00:00"), customer_id: ct2.id, stylist_id: sy2.id, confirmed: true, completed: true, price_id: pr6.id)
ap17 = Appointment.create(date: Date.new(2021,06,15), time: Time.new(2021,06,15,15,30,0, "+00:00"), customer_id: ct1.id, stylist_id: sy2.id, confirmed: true, completed: true, price_id: pr7.id)
ap18 = Appointment.create(date: Date.new(2021,06,15), time: Time.new(2021,06,15,15,0,0, "+00:00"), customer_id: ct2.id, stylist_id: sy1.id, confirmed: true, completed: true, price_id: pr8.id)
ap19 = Appointment.create(date: Date.new(2021,06,16), time: Time.new(2021,06,16,16,0,0, "+00:00"), customer_id: ct1.id, stylist_id: sy1.id, confirmed: false, completed: false, price_id: pr9.id)
ap20 = Appointment.create(date: Date.new(2021,06,18), time: Time.new(2021,06,18,18,0,0, "+00:00"), customer_id: ct2.id, stylist_id: sy2.id, confirmed: false, completed: false, price_id: pr10.id)
ap21 = Appointment.create(date: Date.new(2021,06,28), time: Time.new(2021,06,28,10,0,0, "+00:00"), customer_id: ct1.id, stylist_id: sy1.id, confirmed: false, completed: false, price_id: pr1.id)
ap22 = Appointment.create(date: Date.new(2021,06,29), time: Time.new(2021,06,29,11,30,0, "+00:00"), customer_id: ct2.id, stylist_id: sy2.id, confirmed: false, completed: false, price_id: pr2.id)
ap23 = Appointment.create(date: Date.new(2021,06,29), time: Time.new(2021,06,29,15,0,0, "+00:00"), customer_id: ct1.id, stylist_id: sy1.id, confirmed: false, completed: false, price_id: pr3.id)
ap24 = Appointment.create(date: Date.new(2021,06,30), time: Time.new(2021,06,30,14,30,0, "+00:00"), customer_id: ct1.id, stylist_id: sy2.id, confirmed: false, completed: false, price_id: pr4.id)
ap25 = Appointment.create(date: Date.new(2021,06,30), time: Time.new(2021,06,30,9,30,0, "+00:00"), customer_id: ct3.id, stylist_id: sy1.id, confirmed: false, completed: false, price_id: pr5.id)
ap26 = Appointment.create(date: Date.new(2021,06,30), time: Time.new(2021,06,30,16,0,0, "+00:00"), customer_id: ct4.id, stylist_id: sy2.id, confirmed: false, completed: false, price_id: pr6.id)
ap27 = Appointment.create(date: Date.new(2021,07,01), time: Time.new(2021,07,01,16,30,0, "+00:00"), customer_id: ct5.id, stylist_id: sy2.id, confirmed: false, completed: false, price_id: pr7.id)
ap28 = Appointment.create(date: Date.new(2021,07,01), time: Time.new(2021,07,01,10,0,0, "+00:00"), customer_id: ct6.id, stylist_id: sy1.id, confirmed: false, completed: false, price_id: pr8.id)
ap29 = Appointment.create(date: Date.new(2021,07,02), time: Time.new(2021,07,02,11,0,0, "+00:00"), customer_id: ct7.id, stylist_id: sy1.id, confirmed: false, completed: false, price_id: pr9.id)
ap30 = Appointment.create(date: Date.new(2021,07,02), time: Time.new(2021,07,02,13,0,0, "+00:00"), customer_id: ct8.id, stylist_id: sy2.id, confirmed: false, completed: false, price_id: pr10.id)


