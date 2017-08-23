# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.create(name: "New York")
Location.create(name: "Boston")
Location.create(name: "Los Angeles")
Location.create(name: "Phoenix")
Location.create(name: "Houston")
Location.create(name: "Chicago")
Location.create(name: "Philadelphia")
Location.create(name: "San Francisco")

User.create(first_name: "Matt", last_name: "Thorry", username: "mthorry", password_digest: BCrypt::Password.create('123'), location_id: 1, bio:"Hi, I'm Matt")
User.create(first_name: "Hui", last_name: "Wang", username: "hui", password_digest: BCrypt::Password.create('123'), location_id: 1, bio: "A former stripper")
User.create(first_name: "Some", last_name: "Guy", username: "someguy", password_digest: BCrypt::Password.create('123'), location_id: 2, bio: "I'm just some guy")
User.create(first_name: "Sum Ting", last_name: "Wong", username: "somethingwrong", password_digest: BCrypt::Password.create('123'), location_id: 3, bio: "Something is wrong")


TheDate.create(date_time: "2017-10-19 10:30:00")
TheDate.create(date_time: "2017-10-19 08:30:00")
TheDate.create(date_time: "2017-10-19 09:30:00")
TheDate.create(date_time: "2017-10-20 01:30:00")
TheDate.create(date_time: "2017-10-20 10:30:00")
TheDate.create(date_time: "2017-10-21 12:30:00")
TheDate.create(date_time: "2017-10-21 01:30:00")
TheDate.create(date_time: "2017-10-21 08:30:00")


50.times do
Event.create(name:"#{Faker::RockBand.name} Concert", address:"#{Faker::Address.street_address}", location_id:"#{Faker::Number.between(1, 8)}", the_date_id:"#{Faker::Number.between(1, 8)}", description:"#{Faker::Lorem.paragraph}")
end

# Event.create(name: "Eclipse", address: "11 Broadway", location_id: 1, the_date_id: 1, user_id: 1, description: "Marfa single-origin coffee blog direct trade, intelligentsia you probably haven't heard of them irony raw denim migas squid synth letterpress meditation typewriter. Street art hammock kinfolk sriracha, locavore quinoa iPhone XOXO tofu affogato kombucha. Shabby chic hexagon cloud bread, tattooed edison bulb pop-up before they sold out kombucha etsy schlitz affogato 90's. Pinterest godard cred raclette vaporware vegan kinfolk before they sold out raw denim chambray pickled small batch. Pork belly literally drinking vinegar pop-up butcher tumblr street art kale chips four dollar toast mlkshk roof party four loko. Aesthetic small batch deep v 3 wolf moon, shaman selfies brooklyn lumbersexual kogi occupy plaid 8-bit. Flannel kombucha hammock waistcoat shaman blog. Mixtape prism gastropub adaptogen, bespoke hashtag +1 thundercats butcher drinking vinegar blue bottle. Four loko pabst artisan green juice skateboard four dollar toast small batch cronut. Lo-fi gastropub pabst, pinterest hell of 8-bit leggings put a bird on it chambray cold-pressed.")
# Event.create(name: "Birthday Party", address: "123 14th Street", location_id: 1, the_date_id: 2, user_id: 2, description: "Disrupt coloring book you probably haven't heard of them tumblr letterpress, truffaut blue bottle yuccie wolf DIY mixtape yr. Retro cornhole etsy poutine four loko, hella fingerstache. Gastropub williamsburg locavore edison bulb, palo santo tumeric keffiyeh godard single-origin coffee you probably haven't heard of them portland mumblecore bicycle rights. Chia coloring book hot chicken church-key, lo-fi flannel subway tile. Pour-over helvetica hella salvia brooklyn fam semiotics DIY twee. Everyday carry fashion axe bespoke direct trade. Godard bespoke typewriter 90's hexagon chambray copper mug authentic occupy. Scenester vice hoodie chillwave enamel pin cred. Normcore wayfarers authentic fanny pack, 3 wolf moon kogi semiotics photo booth PBR&B. Tofu shoreditch 90's scenester. Man braid polaroid wayfarers cloud bread deep v tacos chillwave flexitarian tattooed. Kale chips swag chartreuse kogi. Chartreuse gentrify hexagon portland. Tofu raw denim YOLO, flexitarian vegan shaman wayfarers air plant hashtag ramps brunch cred health goth.")


Category.create(name: "Science")
Category.create(name: "Family")
Category.create(name: "Fun")
Category.create(name: "Free")
