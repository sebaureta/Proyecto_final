# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


i1 = Product.new(name: 'Camiseta Juventus', description: 'Camiseta de Futbol', price: 14990)
i1.image.attach(io: File.open('app/assets/images/camisetajuve.jpg'), filename: 'camisetajuve.jpg', content_type: 'image/jpg')
i1.save

i2 = Product.new(name: 'Balon Premier League', description: 'Balón de Fútbol', price: 9990)
i2.image.attach(io: File.open('app/assets/images/balon.jpeg'), filename: 'balon.jpeg', content_type: 'image/jpeg')
i2.save

i3 = Product.new(name: 'Camiseta Barcelona', description: 'Camiseta de Futbol', price: 16990)
i3.image.attach(io: File.open('app/assets/images/camisetabarca.jpg'), filename: 'camisetabarca.jpg', content_type: 'image/jpg')
i3.save

i4 = Product.new(name: 'Camiseta Selección Chilena', description: 'Camiseta de Futbol', price: 19990)
i4.image.attach(io: File.open('app/assets/images/camisetachile.jpeg'), filename: 'camisetachile.jpeg', content_type: 'image/jpeg')
i4.save

i5 = Product.new(name: 'Camiseta Colo Colo', description: 'Camiseta de Futbol', price: 12990)
i5.image.attach(io: File.open('app/assets/images/camistacolo.jpg'), filename: 'camistacolo.jpg', content_type: 'image/jpg')
i5.save

i6 = Product.new(name: 'Camiseta Huachipato', description: 'Camiseta de Futbol', price: 9990)
i6.image.attach(io: File.open('app/assets/images/camisetahuachi.jpeg'), filename: 'camisetahuachi.jpeg', content_type: 'image/jpeg')
i6.save

i7 = Product.new(name: 'Zapatos Adidas', description: 'Zapatos de Futbol', price: 29990)
i7.image.attach(io: File.open('app/assets/images/zapatofutbol2.jpg'), filename: 'zapatofutbol2.jpg', content_type: 'image/jpg')
i7.save

i8 = Product.new(name: 'Zapatos Nike', description: 'Zapatos de Futbol', price: 29990)
i8.image.attach(io: File.open('app/assets/images/zapatofutbol3.jpg'), filename: 'zapatofutbol3.jpg', content_type: 'image/jpg')
i8.save

i9 = Product.new(name: 'Zapatos Nike', description: 'Zapatos de Futbol', price: 29990)
i9.image.attach(io: File.open('app/assets/images/zapatofutbol.jpeg'), filename: 'zapatofutbol3.jpeg', content_type: 'image/jpeg')
i9.save
