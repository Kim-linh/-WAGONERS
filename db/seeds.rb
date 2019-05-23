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

wagoner1 = Wagoner.new(address: "1 Avenue Des Champs Elysees 75008 Paris", github_name: "Benoit", description: "Si vous avez besoin d'un rake vert, Benoit ne pourra pas vous aider", rating: 1, price: 12)
wagoner1.user = nico
wagoner1.save!
wagoner2 = Wagoner.new(address: "10 avenue des Champs Elysees 75008 Paris", github_name: "Arthur", description: "Toujours là pour boire un coup", rating: 3, price: 28, user_id: 1)
wagoner2.user = nico
wagoner2.save!
wagoner3 = Wagoner.new(address: "20 avenue des Champs Elysees 75008 Paris", github_name: "Sarah", description: "Je suis là pour vous aider", rating: 5, price: 53727, user_id: 1)
wagoner3.user = nico
wagoner3.save!
wagoner4 = Wagoner.new(address: "30 avenue des Champs Elysees 75008 Paris", github_name: "Kevin", description: "Nous sommes deux, battez-vous", rating: 3, price: 375, user_id: 1)
wagoner4.user = nico
wagoner4.save!
wagoner5 = Wagoner.new(address: "150 avenue des Champs Elysees 75008 Paris", github_name: "Mathilde", description: "Blank c'est moi", rating: 4, price: 29873, user_id: 1)
wagoner5.user = lola
wagoner5.save!

puts 'new wagoner'

puts 'add a date'


now = Time.now

booking1 = Booking.new(start_at: now, end_at: now)
booking1.user = nico
booking1.wagoner = wagoner1
booking1.save!

booking2 = Booking.new(start_at: now, end_at: now)
booking2.user = lola
booking2.wagoner = wagoner2
booking2.save!

puts 'Fiiiniiii'

