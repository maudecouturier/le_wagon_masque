# require "open-uri"
puts "Drop database..."
Review.destroy_all
Booking.destroy_all
Costume.destroy_all
User.destroy_all
puts "databases dropped!"

puts "Creating users..."
charles = User.create(email:"charles.d@hotmail.com", password:"123456")
jeanne = User.create(email:"jeanne.c@gmail.com", password:"nounou")
lea = User.create(email:"lea.v@gmail.com", password:"coucou")
julien = User.create(email:"julien@glewagon.com", password:"lewagon")
puts "Users created!"

puts "Creating costumes..."
pirate = Costume.create!(user: jeanne, description: "Déguisement d'homme pirate", location: "Paris", price: 20, size: "M", gender: "H", theme: "adulte")
file_pirate = URI.open("https://i.pinimg.com/originals/ac/2c/35/ac2c3590123dd55231cb038b9b7e3528.jpg")
pirate.photo.attach(io: file_pirate, filename: 'pirate.jpg', content_type: 'image/jpg')

princesse = Costume.create!(user: lea, description: "déguisement de conte de fée sexy", location: "Limoges", price: 15, size: "S", gender: "F", theme: "adulte")
file_princesse = URI.open("https://www.deguiz-fetes.fr/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/d/e/deguisement-princesse-blanche-neige-sexy.jpg")
princesse.photo.attach(io: file_princesse, filename: 'princesse.jpg', content_type: 'image/jpg')

mouton = Costume.create!(user: jeanne, description: "déguisement mouton bébé", location: "Lille", price: 15, size: "18 mois", gender: "M", theme: "enfant")
file_mouton = URI.open("https://i.pinimg.com/564x/78/89/c5/7889c5ee96b95a0432bb3214398e08ff.jpg")
mouton.photo.attach(io: file_mouton, filename: 'mouton.jpg', content_type: 'image/jpg')

wagon = Costume.create!(user: julien, description: "déguisement pour les soirées du wagon", location: "paris", price: 30, size: "M", gender: "M", theme: "adulte")
file_wagon = URI.open("https://media.monsieurdeguisement.com/media/catalog/product/cache/3/image/9df78eab33525d08d6e5fb8d27136e95/d/i/disfraz-de-furgoneta-hippie-para-adulto.jpg.jpg")
wagon.photo.attach(io: file_wagon, filename: 'wagon.jpg', content_type: 'image/jpg')
puts "Costumes created!"

puts "Creating bookings..."
booking_1 = Booking.create!(user: charles, costume: pirate, start_date: Date.new(2019,10,1), end_date: Date.new(2019,10,3))
booking_2 = Booking.create!(user: jeanne, costume: mouton, start_date: Date.new(2010,01,12), end_date: Date.new(2020,01,15))
booking_3 = Booking.create!(user: lea, costume: wagon, start_date: Date.new(2019,10,31), end_date: Date.new(2019,11,2))
puts "Bookings created!"

