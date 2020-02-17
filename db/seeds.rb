# require "open-uri"

charles= User.create(email:"charles.d@hotmail.com", password:"123456")
jeanne= User.create(email:"jeanne.c@gmail.com", password:"nounou")
lea= User.create(email:"lea.v@gmail.com", password:"coucou")






pirate = Costume.create!(user: charles, description: "Déguisement d'homme pirate", location: "Paris", price: 20, size: "M", gender: "H", theme: "adulte")
file_pirate = URI.open("https://www.presse-citron.net/wordpress_prod/wp-content/uploads/2019/10/pirates-des-caraibes-51-e1572172251420.jpg")
pirate.photos.attach(io: file_pirate, filename: 'pirate.jpg', content_type: 'image/jpg')

princesse = Costume.create!(user: lea, description: "déguisement de conte de fée sexy", location: "Limoges", price: 15, size: "S", gender: "F", theme: "adulte")
file_princesse = URI.open("https://www.deguiz-fetes.fr/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/d/e/deguisement-princesse-blanche-neige-sexy.jpg")
princesse.photos.attach(io: file_princesse, filename: 'princesse.jpg', content_type: 'image/jpg')

mouton = Costume.create!(user: jeanne, description: "déguisement mouton bébé", location: "Lille", price: 15, size: "18 mois", gender: "M", theme: "enfant")
file_mouton = URI.open("https://i.pinimg.com/564x/78/89/c5/7889c5ee96b95a0432bb3214398e08ff.jpg")
mouton.photos.attach(io: file_mouton, filename: 'mouton.jpg', content_type: 'image/jpg')




