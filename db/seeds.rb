require "open-uri"

pirate = Costume.create(description: "Déguisement d'homme pirate", location: "Paris", price: 20, size: "M", gender: "H", theme: "adulte")
file_pirate = URI.open("https://www.presse-citron.net/wordpress_prod/wp-content/uploads/2019/10/pirates-des-caraibes-51-e1572172251420.jpg")
pirate.photo.attach(io: file_pirate, filename: 'pirate.jpg', content_type: 'image/jpg')

princesse = Costume.create(description: "déguisement de conte de fée sexy", location: "Limoges", price: 15, size: "S", gender: "F", theme: "adulte")
file_princesse = URI.open("https://www.deguiz-fetes.fr/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/d/e/deguisement-princesse-blanche-neige-sexy.jpg")
princesse.photo.attach(io: file_princesse, filename: 'princesse.jpg', content_type: 'image/jpg')

franklin = Costume.create(description: "déguisement Franklin la tortue", location: "Lille", price: 15, size: "12 ans", gender: "M", theme: "enfant")
file_franklin = URI.open("https://static.zilok.com/nas/media/hand/4137/413565.jpg")
franklin.photo.attach(io: file_franklin, filename: 'princesse.jpg', content_type: 'image/jpg')




