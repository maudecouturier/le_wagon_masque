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

file_squelette = URI.open("https://images.unsplash.com/photo-1506364180601-180da27fe1b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
squelette = Costume.new(title:"Squelette", user: lea, description: "déguisement de conte de fée sexy", location: "Limoges", price: 15, size: "S", gender: "F", theme: "fairy-tales")
squelette.photo.attach(io: file_squelette, filename: 'squelette.jpg', content_type: 'image/jpg')
squelette.save!

file_muerte = URI.open("https://images.unsplash.com/photo-1509993630589-dbfcf726c21d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
muerte = Costume.new(title:"Dia de los muerte", user: jeanne, description: "déguisement muerte bébé", location: "Lille", price: 15, size: "XS", gender: "M", theme: "animals")
muerte.photo.attach(io: file_muerte, filename: 'muerte.jpg', content_type: 'image/jpg')
muerte.save!

file_batman = URI.open("https://images.unsplash.com/photo-1547355332-7c6fcb397868?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
batman = Costume.new(title:"Batman", user: julien, description: "déguisement pour les soirées du batman", location: "Paris", price: 30, size: "M", gender: "M", theme: "other")
batman.photo.attach(io: file_batman, filename: 'batman.jpg', content_type: 'image/jpg')
batman.save!

file_casapapel = URI.open("https://images.unsplash.com/photo-1572618821972-1eaa2ad8188e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
casapapel = Costume.new(title:"Braqueur de banque", user: julien, description: "Casa de papel", location: "Paris", price: 30, size: "M", gender: "M", theme: "pirates")
casapapel.photo.attach(io: file_casapapel, filename: 'casapapel.jpg')
casapapel.save!

file_hercule = URI.open("https://images.unsplash.com/photo-1535648451240-482a0bbd6e02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
hercule = Costume.new(title:"Hercule", user: julien, description: "Casa de papel", location: "Paris", price: 30, size: "M", gender: "M", theme: "comics")
hercule.photo.attach(io: file_hercule, filename: 'hercule.jpg')
hercule.save!

file_hacker = URI.open("https://images.unsplash.com/photo-1567360728282-1483bf7a98bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
hacker = Costume.new(title:"Hacker USA", user: lea, description: "Hacker", location: "Paris", price: 30, size: "M", gender: "M", theme: "politics")
hacker.photo.attach(io: file_hacker, filename: 'hacker.jpg')
hacker.save!

file_clown = URI.open("https://images.unsplash.com/photo-1568417858195-270566c8656d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
clown = Costume.new(title:"Clown effrayant", user: lea, description: "Casa de papel", location: "Paris", price: 30, size: "M", gender: "M", theme: "comics")
clown.photo.attach(io: file_clown, filename: 'clown.jpg')
clown.save!

file_spiderman = URI.open("https://images.unsplash.com/photo-1571781565036-d3f759be73e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
spiderman = Costume.new(title:"Spiderman", user: jeanne, description: "Spiderman bla bla bla", location: "Paris", price: 30, size: "M", gender: "F", theme: "fairy-tales")
spiderman.photo.attach(io: file_spiderman, filename: 'spiderman.jpg')
spiderman.save!

file_blood = URI.open("https://images.unsplash.com/photo-1572553043207-2f082dd323a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
blood = Costume.new(title:"Man covered in blood", user: charles, description: "Perfect to frighten your children", location: "Paris", price: 20, size: "L", gender: "M", theme: "pirates")
blood.photo.attach(io: file_blood, filename: 'blood.jpg')
blood.save!

file_astronaut = URI.open("https://images.unsplash.com/photo-1478479336189-2148e701dfb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
astronaut = Costume.new(title:"Astronaut", user: charles, description: "Ready to go on the moon", location: "Montmartre, Paris", price: 50, size: "M", gender: "M", theme: "pirates")
astronaut.photo.attach(io: file_astronaut, filename: 'astronaut.jpg')
astronaut.save!

file_cow = URI.open("https://images.unsplash.com/photo-1564784670088-4162f94257af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
cow = Costume.new(title:"Cow", user: charles, description: "Cow to make you eat more meat", location: "Montparnasse, Paris", price: 50, size: "M", gender: "M", theme: "pirates")
cow.photo.attach(io: file_cow, filename: 'cow.jpg')
cow.save!

puts "Costumes created!"

puts "Creating bookings..."
booking_1 = Booking.create!(user: charles, costume: blood, start_date: Date.new(2019,10,1), end_date: Date.new(2019,10,3))
booking_2 = Booking.create!(user: charles, costume: cow, start_date: Date.new(2010,01,12), end_date: Date.new(2020,01,15))
booking_3 = Booking.create!(user: charles, costume: astronaut, start_date: Date.new(2019,10,31), end_date: Date.new(2019,11,2))
puts "Bookings created!"

