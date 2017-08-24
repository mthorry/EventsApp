# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# Location.create(name: "New York")
# Location.create(name: "Boston")
# Location.create(name: "Los Angeles")
# Location.create(name: "Phoenix")
# Location.create(name: "Houston")
# Location.create(name: "Chicago")
# Location.create(name: "Philadelphia")
# Location.create(name: "San Francisco")

# User.create(first_name: "Matt", last_name: "Thorry", username: "mthorry", password_digest: BCrypt::Password.create('123'), location_id: 1, bio:"Hi, I'm Matt. #{Faker::RuPaul.quote}")
# User.create(first_name: "Hui", last_name: "Wang", username: "hui", password_digest: BCrypt::Password.create('123'), location_id: 1, bio: "A former stripper. #{Faker::RuPaul.quote}")
# User.create(first_name: "Some", last_name: "Guy", username: "someguy", password_digest: BCrypt::Password.create('123'), location_id: 2, bio: "I'm just some guy. #{Faker::RuPaul.quote}")
# User.create(first_name: "Sum Ting", last_name: "Wong", username: "somethingwrong", password_digest: BCrypt::Password.create('123'), location_id: 3, bio: "Something is wrong. #{Faker::RuPaul.quote}")

# 50.times do
#   User.create(first_name: "#{Faker::Name.first_name}", last_name: "#{Faker::Name.last_name}", username: "#{Faker::Internet.email}", password_digest: BCrypt::Password.create('123'), location_id: "#{Faker::Number.between(1, 8)}", bio: "#{Faker::RuPaul.quote}. #{Faker::TheFreshPrinceOfBelAir.quote}")
# end


# TheDate.create(date_time: "2017-10-19 10:30:00")
# TheDate.create(date_time: "2017-10-19 08:30:00")
# TheDate.create(date_time: "2017-10-19 09:30:00")
# TheDate.create(date_time: "2017-10-20 01:30:00")
# TheDate.create(date_time: "2017-10-20 10:30:00")
# TheDate.create(date_time: "2017-10-21 12:30:00")
# TheDate.create(date_time: "2017-10-21 01:30:00")
# TheDate.create(date_time: "2017-10-21 08:30:00")
# TheDate.create(date_time: "2017-08-24 08:30:00")
# TheDate.create(date_time: "2017-08-24 09:30:00")
# TheDate.create(date_time: "2017-08-25 08:30:00")
# TheDate.create(date_time: "2017-08-25 09:30:00")
# TheDate.create(date_time: "2017-08-26 08:30:00")
# TheDate.create(date_time: "2017-08-26 09:30:00")


# 50.times do
# Event.create(name:"#{Faker::RockBand.name} Concert", address:"#{Faker::Address.street_address}", location_id:"#{Faker::Number.between(1, 8)}", the_date_id:"#{Faker::Number.between(1, 14)}", description:"#{Faker::Hipster.paragraph}#{Faker::Hipster.paragraph}")
# end

# Category.create(name: "Science")
# Category.create(name: "Family")
# Category.create(name: "Fun")
# Category.create(name: "Free")

# 50.times do
#   Category.create(name: "#{Faker::Hipster.word}")
# end

# Event.all.each do |e|
#   e.categories << [Category.find("#{Faker::Number.between(1, 15)}"), Category.find("#{Faker::Number.between(16, 35)}"), Category.find("#{Faker::Number.between(36, 50)}")]
# end

# User.all.each do |u|
#   u.events << [Event.find("#{Faker::Number.between(1, 10)}"), Event.find("#{Faker::Number.between(11, 20)}"), Event.find("#{Faker::Number.between(21, 30)}"), Event.find("#{Faker::Number.between(31, 40)}"), Event.find("#{Faker::Number.between(41, 50)}")]
# end

# User.all.each do |u|
#   u.img = "#{Faker::Avatar.image}"
#   u.save
# end

# Event.all.each do |e|
#   num = e.id%10+1
#   e.img = "http://lorempixel.com/400/300/nightlife/#{num}"
#   e.save
# end

require 'rubygems'
require 'eventful/api'
require 'byebug'

 eventful = Eventful::API.new 'GqHWFQtLLpdW8s5r'

cat = Category.find(1)
  results = eventful.call 'events/search',
                           :keywords => cat.name,
                           :location => "New York",
                           :page_size => 50,
                           :date => 'Future',
                           :sort_order => 'popularity'

  cat_results = results['events']['event']

   cat_results.each do |this_event|
    this_date = TheDate.find_or_create_by(date_time: this_event['start_time'])
    e = Event.new(
      name: this_event['title'],
      location_id: 1,
      img: this_event['image']['medium']['url'],
      description: this_event['description'],
      venue: this_event['venue_name'],
      the_date_id: this_date.id,
      address: this_event['venue_address'],
      url: this_event['url']
      )
    e.categories << cat
    e.save
   end


# categories.each do |cat|
#   Category.create(
#     name: cat
#     )
# end



