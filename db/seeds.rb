
# Location.create(name: "New York")
# Location.create(name: "Los Angeles")
# Location.create(name: "Chicago")


# User.create(first_name: "Matt", last_name: "Thorry", username: "demo", password_digest: BCrypt::Password.create('demo'), location_id: 1, bio:"Hi, I'm Matt. #{Faker::RuPaul.quote}", img: "https://avatars3.githubusercontent.com/u/24977308?v=4&s=460")
# User.create(first_name: "Hui", last_name: "Wang", username: "hui", password_digest: BCrypt::Password.create('123'), location_id: 1, bio: "Hi there! #{Faker::RuPaul.quote}. #{Faker::TheFreshPrinceOfBelAir.quote}", img: "https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/11700591_10153184192408369_4797525353369610949_o.jpg?oh=5a2371c29d0d780d1ce89d80de65029c&oe=5A1C8987")
# User.create(first_name: "Jennifer", last_name: "Lawrence", username: "jlaw", password_digest: BCrypt::Password.create('123'), location_id: 2, bio: "#{Faker::RuPaul.quote}. #{Faker::TheFreshPrinceOfBelAir.quote}", img: "http://photos.vanityfair.com/2014/10/06/5432e75974ed87dd423a381d_jennifer-lawrence-vanity-fair-11-november-cover-ss01.jpg")
# User.create(first_name: "Amy", last_name: "Poehler", username: "amy.po", password_digest: BCrypt::Password.create('123'), location_id: 1, bio: "#{Faker::RuPaul.quote}. #{Faker::TheFreshPrinceOfBelAir.quote}", img: "https://images-na.ssl-images-amazon.com/images/M/MV5BNDZlNmRhNjQtOTZjZC00YzkwLWFlMDMtNTNiMmVhN2UxMzliXkEyXkFqcGdeQXVyNzcwODE0OTk@._V1_UX214_CR0,0,214,317_AL_.jpg")
# User.create(first_name: "Chris", last_name: "Pratt", username: "cp3o", password_digest: BCrypt::Password.create('123'), location_id: 2, bio: "#{Faker::RuPaul.quote}. #{Faker::TheFreshPrinceOfBelAir.quote}", img: "https://s-media-cache-ak0.pinimg.com/736x/1c/82/51/1c8251f8bcd9dca4d13ff68ba0e5df08--hair-colors-chris-delia.jpg")

# 50.times do
#   User.create(first_name: "#{Faker::Name.first_name}", last_name: "#{Faker::Name.last_name}", username: "#{Faker::Internet.email}", password_digest: BCrypt::Password.create('123'), location_id: "#{Faker::Number.between(1, 3)}", bio: "#{Faker::RuPaul.quote}. #{Faker::TheFreshPrinceOfBelAir.quote}.", img: "#{Faker::Avatar.image}")
# end
                    # 1              3    4            5
# categories = %w(//music// null //food//art//festivals_parades// null null null)

# categories.each do |cat|
#   Category.create(name: cat)
# end


# require 'rubygems'
# require 'eventful/api'
# require 'byebug'

# eventful = Eventful::API.new 'GqHWFQtLLpdW8s5r'

# cat = Category.find(5)
#   results = eventful.call "events/search",
#                  :keywords => cat.name,
#                  :location => "Los Angeles",
#                  :page_size => 50,
#                  :date => 'Future',
#                  :sort_order => 'popularity'

# cat_results = results['events']['event']

# cat_results.each do |this_event|
#   this_date = TheDate.find_or_create_by(date_time: this_event['start_time'])

#   e = Event.find_or_create_by(
#     name: this_event['title'],
#     location_id: 2,
#     img: this_event['image']['medium']['url'],
#     description: this_event['description'],
#     venue: this_event['venue_name'],
#     the_date_id: this_date.id,
#     address: this_event['venue_address'],
#     url: this_event['url']
#     )
#   e.categories << cat
#   e.save
# end

# cat = ""
# cat_results = ""

# User.all.each do |u|
#   u.friends << [User.find("#{Faker::Number.between(5, 15)}"), User.find("#{Faker::Number.between(16, 30)}"), User.find("#{Faker::Number.between(31, 40)}"), User.find("#{Faker::Number.between(41, 55)}")]
# end

# Category.all.each do |e|
#   num = e.id%10+1
#   e.img = "http://lorempixel.com/400/300/nightlife/#{num}"
#   e.save
# end
