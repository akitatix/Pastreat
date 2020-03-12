Boulangerie.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Boulangerie.create({ name: 'Eric Kayser', email: "vincent.gonnard@gmail.com" , position: "45.768540,4.836213", badge: "Or", prix_cr: "4", prix_pc: "4", time_open: Time.new(2002, 10, 31, 8, 2, 2), time_close: Time.new(2002, 10, 31, 18, 2, 2), image: "../../app/assets/images/erickayser.jpg"})
Boulangerie.create({ name: 'Maison Jacquard', email: "vincent.gonnard@gmail.com" , position: "45.768947,4.832261", badge: "Or", prix_cr: "4", prix_pc: "4", time_open: Time.new(2002, 10, 31, 8, 2, 2), time_close: Time.new(2002, 10, 31, 18, 2, 2), image: "https://scontent.fcdg1-1.fna.fbcdn.net/v/t31.0-8/p960x960/17097289_1802048543404633_6449971075428755572_o.jpg?_nc_cat=102&_nc_sid=85a577&_nc_ohc=2-OPcxniMyIAX8NTg3t&_nc_ht=scontent.fcdg1-1.fna&_nc_tp=6&oh=deb0c8c0ceb5323b3b3fe8faf6b58262&oe=5E8D294D"})
Boulangerie.create({ name: 'O tao bom', email: "vincent.gonnard@gmail.com" , position: "45.769913,4.836036", badge: "Argent", prix_cr: "4", prix_pc: "4", time_open: Time.new(2002, 10, 31, 8, 2, 2), time_close: Time.new(2002, 10, 31, 18, 2, 2), image: "https://he.airbnb.com/google_place_photo?photoreference=CmRaAAAAdENbeHAPaxOe5xj6tIuiFhIb7SfsVUehTCSH-xobQ__hbYCNd7Q0YuwTAdL830rLVIEBNBTCOXDjUs-Wte8JH51WsDpxiOupf42PeO1zbBPKeLqP5iHyzgzG6iG_uRSTEhBZCLVLRvZk-QKKU-mpF7e4GhQMUum3MmzV1ThvTpVMDC-887u5vg&maxwidth=800&maxheight=800&place_id=1984976"})
Boulangerie.create({ name: 'Antoinette Pain & Brioche', email: "vincent.gonnard@gmail.com" , position: "45.767865,4.830878", badge: "Argent", prix_cr: "4", prix_pc: "4", time_open: Time.new(2002, 10, 31, 8, 2, 2), time_close: Time.new(2002, 10, 31, 18, 2, 2), image: "https://lepetitatelierdelouise.com/wp-content/uploads/2016/10/AntoinettePainBrioche7.jpg"})
Boulangerie.create({ name: 'Au fournil du 6ème', email: "vincent.gonnard@gmail.com" , position: "45.769465,4.844340", badge: "Bronze", prix_cr: "4", prix_pc: "4", time_open: Time.new(2002, 10, 31, 8, 2, 2), time_close: Time.new(2002, 10, 31, 18, 2, 2), image: "https://s3-media0.fl.yelpcdn.com/bphoto/rkc8IJKPOonY2OSyPt1b0Q/l.jpg"})


