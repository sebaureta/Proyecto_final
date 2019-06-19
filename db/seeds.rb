# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.new(name: 'Sebastian', email: 'sureta@outlook.es', admin: true, encrypted_password: "qweqwe")
u1.avatar.attach(io: File.open('app/assets/images/seba.jpg'), filename: 'seba.jpg', content_type: 'image/jpg')
u1.save

u2 = User.new(name: 'Logan', email: 'logan@gato.cl', admin: false, encrypted_password: "qweqwe")
u2.avatar.attach(io: File.open('app/assets/images/logan.jpg'), filename: 'logan.jpg', content_type: 'image/jpg')
u2.save

c1 = Category.new(name: 'Deportes')
c1.save

c2 = Category.new(name: 'Peliculas')
c2.save

c3 = Category.new(name: 'Musica')
c3.save

c4 = Category.new(name: 'Video Juegos')
c4.save

c5 = Category.new(name: 'Electrónica')
c5.save


i1 = Product.new(name: 'Camiseta Juventus', description: 'Camiseta de Futbol', price: 14990)
i1.image.attach(io: File.open('app/assets/images/camisetajuve.jpg'), filename: 'camisetajuve.jpg', content_type: 'image/jpg')
i1.categories = ["1"]
i1.save

i2 = Product.new(name: 'Balon Premier League', description: 'Balón de Fútbol', price: 9990)
i2.image.attach(io: File.open('app/assets/images/balon.jpeg'), filename: 'balon.jpeg', content_type: 'image/jpeg')
i2.categories = ["1"]
i2.save

i3 = Product.new(name: 'Camiseta Barcelona', description: 'Camiseta de Futbol', price: 16990)
i3.image.attach(io: File.open('app/assets/images/camisetabarca.jpg'), filename: 'camisetabarca.jpg', content_type: 'image/jpg')
i3.categories = ["1"]
i3.save

i4 = Product.new(name: 'Camiseta Selección Chilena', description: 'Camiseta de Futbol', price: 19990)
i4.image.attach(io: File.open('app/assets/images/camisetachile.jpeg'), filename: 'camisetachile.jpeg', content_type: 'image/jpeg')
i4.categories = ["1"]
i4.save

i5 = Product.new(name: 'Camiseta Colo Colo', description: 'Camiseta de Futbol', price: 12990)
i5.image.attach(io: File.open('app/assets/images/camistacolo.jpg'), filename: 'camistacolo.jpg', content_type: 'image/jpg')
i5.categories = ["1"]
i5.save

i6 = Product.new(name: 'Camiseta Huachipato', description: 'Camiseta de Futbol', price: 9990)
i6.image.attach(io: File.open('app/assets/images/camisetahuachi.jpeg'), filename: 'camisetahuachi.jpeg', content_type: 'image/jpeg')
i6.categories = ["1"]
i6.save

i7 = Product.new(name: 'Zapatos Adidas', description: 'Zapatos de Futbol', price: 29990)
i7.image.attach(io: File.open('app/assets/images/zapatofutbol2.jpg'), filename: 'zapatofutbol2.jpg', content_type: 'image/jpg')
i7.categories = ["1"]
i7.save

i8 = Product.new(name: 'Zapatos Nike', description: 'Zapatos de Futbol', price: 29990)
i8.image.attach(io: File.open('app/assets/images/zapatofutbol3.jpg'), filename: 'zapatofutbol3.jpg', content_type: 'image/jpg')
i8.categories = ["1"]
i8.save

i9 = Product.new(name: 'Zapatos Nike', description: 'Zapatos de Futbol', price: 29990)
i9.image.attach(io: File.open('app/assets/images/zapatofutbol.jpeg'), filename: 'zapatofutbol3.jpeg', content_type: 'image/jpeg')
i9.categories = ["1"]
i9.save

i10 = Product.new(name: 'Venom', description: 'Pelicula Marvel', price: 12990)
i10.image.attach(io: File.open('app/assets/images/venom.jpg'), filename: 'venom.jpg', content_type: 'image/jpg')
i10.categories = ["2"]
i10.save

i11 = Product.new(name: 'Han Solo', description: 'Pelicula Disney', price: 12990)
i11.image.attach(io: File.open('app/assets/images/hansolo.jpg'), filename: 'hansolo.jpg', content_type: 'image/jpg')
i11.categories = ["2"]
i11.save

i12 = Product.new(name: 'Tin Tin', description: 'Pelicula Disney', price: 12990)
i12.image.attach(io: File.open('app/assets/images/tintin.jpeg'), filename: 'tintin.jpeg', content_type: 'image/jpg')
i12.categories = ["2"]
i12.save

i13 = Product.new(name: 'Destiny 2', description: 'Juego PS4', price: 24990)
i13.image.attach(io: File.open('app/assets/images/destiny2.jpeg'), filename: 'destiny2.jpeg', content_type: 'image/jpg')
i13.categories = ["4"]
i13.save

i14 = Product.new(name: 'Fuerza Natural', description: 'Disco Gustavo Cerati', price: 9990)
i14.image.attach(io: File.open('app/assets/images/fuerzanatural.jpg'), filename: 'fuerzanatural.jpg', content_type: 'image/jpg')
i14.categories = ["3"]
i14.save

i15 = Product.new(name: 'Take of Your Pants & Jacket', description: 'Disco Blink 182', price: 9990)
i15.image.attach(io: File.open('app/assets/images/toypay.jpeg'), filename: 'toypay.jpg', content_type: 'image/jpg')
i15.categories = ["3"]
i15.save

i16 = Product.new(name: 'Conspiration of One', description: 'Disco The Offspring', price: 9990)
i16.image.attach(io: File.open('app/assets/images/conspiration.jpeg'), filename: 'conspiration.jpeg', content_type: 'image/jpg')
i16.categories = ["3"]
i16.save

i17 = Product.new(name: 'Concentrador USB', description: 'Adaptador multiples usb', price: 5990)
i17.image.attach(io: File.open('app/assets/images/usb.jpeg'), filename: 'usb.jpeg', content_type: 'image/jpg')
i17.categories = ["5"]
i17.save

i17 = Product.new(name: 'Control Remoto', description: 'Control Universal', price: 8990)
i17.image.attach(io: File.open('app/assets/images/controlremoto.jpg'), filename: 'controlremoto.jpg', content_type: 'image/jpg')
i17.categories = ["5"]
i17.save
