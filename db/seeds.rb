p "Deleting all the content "
Rating.destroy_all
Reservation.destroy_all
User.destroy_all
Boulangerie.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Create User "
user = User.new
user.first_name = "Yoaki"
user.last_name = "Niscoise"
user.email = "yoakiniscoise@gmail.com"
user.password = "nonnon"
user.password_confirmation = "nonnon"
user.save!
Boulangerie.create!(name: 'Eric Kayser', position: "45.768540,4.836213", badge: "Or", prix_cr: 1, prix_pc: 1.2, time_open: Time.new(2002, 10, 31, 8, 0, 0), time_close: Time.new(2002, 10, 31, 18, 0, 0), image: 'erickayser.jpg', email:"vincent.gonnard@gmail.com")
Boulangerie.create({ name: 'Maison Jacquard', position: "45.768947,4.832261", badge: "Or", prix_cr: 1, prix_pc: 1.2, time_open: Time.new(2002, 10, 31, 8, 0, 0), time_close: Time.new(2002, 10, 31, 18, 0, 0), image: "maisonjackq.jpg", email:"vincent.gonnard@gmail.com"})
Boulangerie.create({ name: 'O tao bom', position: "45.769913,4.836036", badge: "Argent", prix_cr: 1, prix_pc: 1.2, time_open: Time.new(2002, 10, 31, 8, 0, 0), time_close: Time.new(2002, 10, 31, 18, 0, 0), image: "taobom.jpg", email:"vincent.gonnard@gmail.com"})
Boulangerie.create({ name: 'Antoinette Pain & Brioche', position: "45.767865,4.830878", badge: "Argent", prix_cr: 1, prix_pc: 1.2, time_open: Time.new(2002, 10, 31, 8, 0, 0), time_close: Time.new(2002, 10, 31, 18, 0, 0), image: "painetbrioche.jpg", email:"vincent.gonnard@gmail.com"})
Boulangerie.create({ name: 'Au fournil du 6ème', position: "45.769465,4.844340", badge: "Bronze", prix_cr: 1, prix_pc: 1.2, time_open: Time.new(2002, 10, 31, 8, 0, 0), time_close: Time.new(2002, 10, 31, 18, 0, 0), image: "fournildu6.png", email:"vincent.gonnard@gmail.com"})
Boulangerie.create!(name: 'Boulangerie Cartellier', position: "45.773405, 4.845099", badge: "Or", prix_cr: 1, prix_pc: 1.2, time_open: Time.new(2002, 10, 31, 8, 0, 0), time_close: Time.new(2002, 10, 31, 18, 0, 0), image: 'maison_cartellier.jpg', email:"vincent.gonnard@gmail.com")
Boulangerie.create({ name: 'Max Poilane', position: "45.766887, 4.844491", badge: "Or", prix_cr: 1, prix_pc: 1.2, time_open: Time.new(2002, 10, 31, 8, 0, 0), time_close: Time.new(2002, 10, 31, 18, 2, 2), image: "max_poilane.jpg", email:"vincent.gonnard@gmail.com"})
Boulangerie.create({ name: 'Partisan Boulanger', position: "45.777579, 4.832430", badge: "Argent", prix_cr: 1, prix_pc: 1.2, time_open: Time.new(2002, 10, 31, 8, 0, 0), time_close: Time.new(2002, 10, 31, 18, 0, 0), image: "partisan-boulanger-9.jpg", email:"vincent.gonnard@gmail.com"})
Boulangerie.create({ name: 'Ô Fournil des Artistes', position: "45.777141, 4.833240", badge: "Argent", prix_cr: 1, prix_pc: 1.2, time_open: Time.new(2002, 10, 31, 8, 0, 0), time_close: Time.new(2002, 10, 31, 18, 0, 0), image: "fournilartist.jpg", email:"vincent.gonnard@gmail.com"})
Boulangerie.create({ name: 'Boulangerie Les Frangins', position: "45.762103, 4.836533", badge: "Bronze", prix_cr: 1, prix_pc: 1.2, time_open: Time.new(2002, 10, 31, 8, 0, 0), time_close: Time.new(2002, 10, 31, 18, 0, 0), image: "boulangerie_frangin.jpg", email:"vincent.gonnard@gmail.com"})

p "Create Rating "
Rating.create({ star: 2, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 5, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 1, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 2, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 4, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 5, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 2, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 1, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 4, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 5, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 2, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 1, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 5, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 5, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 2, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 5, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 1, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 2, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 4, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 5, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 2, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 1, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 4, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 5, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 3, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 2, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 1, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 5, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
Rating.create({ star: 5, boulangerie_id: Boulangerie.all.sample.id, user_id: user.id})
p "Done"

