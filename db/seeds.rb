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
squelette = Costume.new(title:"Squelette", user: lea, location: "rue de Tolbiac", price: 15, size: "S", gender: "F", theme: "fairy-tales")
squelette.photo.attach(io: file_squelette, filename: 'squelette.jpg', content_type: 'image/jpg')
squelette.save!

file_muerte = URI.open("https://images.unsplash.com/photo-1509993630589-dbfcf726c21d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
muerte = Costume.new(title:"Dia de los muerte", user: jeanne, location: "Villa Gaudelet", price: 15, size: "XS", gender: "M", theme: "animals")
muerte.photo.attach(io: file_muerte, filename: 'muerte.jpg', content_type: 'image/jpg')
muerte.save!

file_batman = URI.open("https://images.unsplash.com/photo-1547355332-7c6fcb397868?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
batman = Costume.new(title:"Batman", user: julien, location: "Champs-Elysées", price: 30, size: "M", gender: "M", theme: "other")
batman.photo.attach(io: file_batman, filename: 'batman.jpg', content_type: 'image/jpg')
batman.save!

file_casapapel = URI.open("https://images.unsplash.com/photo-1572618821972-1eaa2ad8188e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
casapapel = Costume.new(title:"Braqueur de banque", user: julien, location: "51 rue des Renaudes, Paris", price: 30, size: "M", gender: "M", theme: "pirates")
casapapel.photo.attach(io: file_casapapel, filename: 'casapapel.jpg')
casapapel.save!

file_hercule = URI.open("https://images.unsplash.com/photo-1535648451240-482a0bbd6e02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
hercule = Costume.new(title:"Hercule", user: julien, location: "Tour-eiffel", price: 30, size: "M", gender: "M", theme: "comics")
hercule.photo.attach(io: file_hercule, filename: 'hercule.jpg')
hercule.save!

file_hacker = URI.open("https://images.unsplash.com/photo-1567360728282-1483bf7a98bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
hacker = Costume.new(title:"Hacker USA", user: lea, location: "Paris", price: 30, size: "M", gender: "M", theme: "politics")
hacker.photo.attach(io: file_hacker, filename: 'hacker.jpg')
hacker.save!

file_clown = URI.open("https://images.unsplash.com/photo-1568417858195-270566c8656d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
clown = Costume.new(title:"Clown effrayant", user: lea, location: "Paris", price: 30, size: "M", gender: "M", theme: "comics")
clown.photo.attach(io: file_clown, filename: 'clown.jpg')
clown.save!

file_spiderman = URI.open("https://images.unsplash.com/photo-1571781565036-d3f759be73e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
spiderman = Costume.new(title:"Spiderman", user: jeanne, location: "Paris", price: 30, size: "M", gender: "F", theme: "fairy-tales", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
spiderman.photo.attach(io: file_spiderman, filename: 'spiderman.jpg')
spiderman.save!

file_blood = URI.open("https://images.unsplash.com/photo-1572553043207-2f082dd323a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
blood = Costume.new(title:"Man covered in blood", user: charles, location: "Paris", price: 20, size: "L", gender: "M", theme: "pirates", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
blood.photo.attach(io: file_blood, filename: 'blood.jpg')
blood.save!

file_astronaut = URI.open("https://images.unsplash.com/photo-1478479336189-2148e701dfb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
astronaut = Costume.new(title:"Astronaut", user: charles, location: "Montmartre, Paris", price: 50, size: "M", gender: "M", theme: "pirates", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
astronaut.photo.attach(io: file_astronaut, filename: 'astronaut.jpg')
astronaut.save!

file_cow = URI.open("https://images.unsplash.com/photo-1564784670088-4162f94257af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
cow = Costume.new(title:"Cow", user: charles, location: "Montparnasse, Paris", price: 50, size: "M", gender: "M", theme: "other", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
cow.photo.attach(io: file_cow, filename: 'cow.jpg')
cow.save!

file_bouddha = URI.open("https://images.unsplash.com/photo-1559109156-e157c790a144?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
bouddha = Costume.new(title:"Bouddha", user: charles, location: "5 villa Hersent, Paris", price: 25, size: "L", gender: "M", theme: "other", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
bouddha.photo.attach(io: file_bouddha, filename: 'bouddha.jpg')
bouddha.save!

file_geisha = URI.open("https://images.unsplash.com/photo-1559654759-6b984e5f814e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
geisha = Costume.new(title:"geisha", user: charles, location: "2 avenue de Saint-Ouen, Paris", price: 50, size: "M", gender: "F", theme: "fairy-tales", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
geisha.photo.attach(io: file_geisha, filename: 'geisha.jpg')
geisha.save!

file_inuit = URI.open("https://images.unsplash.com/photo-1566800450696-93f195ecd77c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
inuit = Costume.new(title:"inuit", user: lea, location: "rue de Tolbiac", price: 50, size: "L", gender: "F", theme: "other", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
inuit.photo.attach(io: file_inuit, filename: 'inuit.jpg', content_type: 'image/jpg')
inuit.save!

file_santaclaus = URI.open("https://images.unsplash.com/photo-1577210944468-9a7e75687a54?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
santaclaus = Costume.new(title:"Sexy Santaclaus", user: jeanne, location: "Villa Gaudelet", price: 45, size: "XS", gender: "M", theme: "fairy-tales", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
santaclaus.photo.attach(io: file_santaclaus, filename: 'santaclaus.jpg', content_type: 'image/jpg')
santaclaus.save!

file_bunny = URI.open("https://images.unsplash.com/photo-1581661685609-4fb610338a34?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
bunny = Costume.new(title:"bunny", user: julien, location: "40 rue Damremont, Paris", price: 30, size: "M", gender: "F", theme: "fairy-tales", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
bunny.photo.attach(io: file_bunny, filename: 'bunny.jpg', content_type: 'image/jpg')
bunny.save!

file_baseball = URI.open("https://images.unsplash.com/flagged/photo-1563296412-742dfbae0afe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
baseball = Costume.new(title:"Baseball", user: julien, location: "Avenue de Clichy, Paris", price: 30, size: "M", gender: "F", theme: "other", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
baseball.photo.attach(io: file_baseball, filename: 'baseball.jpg')
baseball.save!




puts "Costumes created!"

puts "Creating bookings..."

booking_1 = Booking.create!(user: charles, costume: batman, start_date: Date.new(2019,10,01), end_date: Date.new(2019,10,03))
booking_2 = Booking.create!(user: jeanne, costume: casapapel, start_date: Date.new(2020,01,12), end_date: Date.new(2020,01,15))
booking_3 = Booking.create!(user: lea, costume: astronaut, start_date: Date.new(2019,10,31), end_date: Date.new(2019,11,02))


puts "Bookings created!"

