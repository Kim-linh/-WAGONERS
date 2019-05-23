# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Booking.destroy_all
Wagoner.destroy_all
User.destroy_all


puts 'add a profile...'

nico = User.create!(first_name: 'Nico', last_name: 'gentil', email: 'nico@lewagon.fr', password: 'azerty')
lola = User.create!(first_name: 'Lola', last_name: 'Poulette', email: 'lola@lewagon.fr', password: 'azerty')

puts 'User OK...'


wagoner1 = Wagoner.new(address: "1 Avenue Des Champs Elysees 75008 Paris", github_name: "Benoit", description: "Je sers à rien", rating: 1, price: 12)
wagoner1.remote_avatar_url = "https://res.cloudinary.com/dvb6zudlf/image/upload/v1558630637/benoit_oet2od.jpg"
wagoner1.user = nico
wagoner1.save!
wagoner2 = Wagoner.new(address: "10 avenue des Champs Elysees 75008 Paris", github_name: "Arthur", description: "On va boire un coup?", rating: 3, price: 28, user_id: 1, avatar: "arthur_aewwf6.jpg")
wagoner2.user = nico
wagoner2.remote_avatar_url = "https://res.cloudinary.com/dvb6zudlf/image/upload/v1558630637/arthur_aewwf6.jpg"
wagoner2.save!
wagoner3 = Wagoner.new(address: "20 avenue des Champs Elysees 75008 Paris", github_name: "Sarah", description: "Je suis là pour vous aider", rating: 5, price: 53727, user_id: 1, avatar: "sarah_ddein0.jpg")
wagoner3.user = nico
wagoner3.remote_avatar_url = "https://res.cloudinary.com/dvb6zudlf/image/upload/v1558630637/sarah_ddein0.jpg"
wagoner3.save!
wagoner4 = Wagoner.new(address: "30 avenue des Champs Elysees 75008 Paris", github_name: "Kevin", description: "Nous sommes deux, battez-vous", rating: 3, price: 375, user_id: 1, avatar: "kevin_ocvyjk.jpg")
wagoner4.user = nico
wagoner4.remote_avatar_url = "https://res.cloudinary.com/dvb6zudlf/image/upload/v1558630637/kevin_ocvyjk.jpg"
wagoner4.save!
wagoner5 = Wagoner.new(address: "150 avenue des Champs Elysees 75008 Paris", github_name: "Mathilde", description: "Blank c'est moi", rating: 4, price: 29873, user_id: 1, avatar: "mathilde_g72pdq.jpg")
wagoner5.user = lola
wagoner5.remote_avatar_url = "https://res.cloudinary.com/dvb6zudlf/image/upload/v1558630637/mathilde_g72pdq.jpg"
wagoner5.save!

puts 'new wagoner'

puts 'add a date'


now = Time.now

booking1 = Booking.new(start_at: now, end_at: Time.now + 5.hours)
booking1.user = nico
booking1.wagoner = wagoner1
booking1.save!

booking2 = Booking.new(start_at: now, end_at: Time.now + 15.hours)
booking2.user = lola
booking2.wagoner = wagoner2
booking2.save!

puts 'Fiiiniiii'


