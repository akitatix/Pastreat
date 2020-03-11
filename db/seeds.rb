Boulangerie.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Boulangerie.create({ name: 'Eric Kayse', position: "45.768540,4.836213", badge: "Or", prix_cr: "4", prix_pc: "4", time_open: Time.new(2002, 10, 31, 8, 2, 2), time_close: Time.new(2002, 10, 31, 18, 2, 2)})
Boulangerie.create({ name: 'Maison Jacquard', position: "45.768947,4.832261", badge: "Or", prix_cr: "4", prix_pc: "4", time_open: Time.new(2002, 10, 31, 8, 2, 2), time_close: Time.new(2002, 10, 31, 18, 2, 2)})
Boulangerie.create({ name: 'O tao bom', position: "45.769913,4.836036", badge: "Argent", prix_cr: "4", prix_pc: "4", time_open: Time.new(2002, 10, 31, 8, 2, 2), time_close: Time.new(2002, 10, 31, 2, 2, 2)})
Boulangerie.create({ name: 'Antoinette Pain & Brioche', position: "45.767865,4.830878", badge: "Argent", prix_cr: "4", prix_pc: "4", time_open: Time.new(2002, 10, 31, 8, 2, 2), time_close: Time.new(2002, 10, 31, 18, 2, 2)})
Boulangerie.create({ name: 'Au fournil du 6ème', position: "45.769465,4.844340", badge: "Bronze", prix_cr: "4", prix_pc: "4", time_open: Time.new(2002, 10, 31, 8, 2, 2), time_close: Time.new(2002, 10, 31, 18, 2, 2)})


