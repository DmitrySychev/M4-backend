# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all
UserEvent.destroy_all


require 'faker'
category = ["Zoom Party", "Happy Hour", "Game Night", "Political Discussion", "AirBnB Experience"]


User.create(username: "its_me_luis", password_digest: Faker::Internet.password)
User.create(username: "notalicia", password_digest: Faker::Internet.password)
User.create(username: "jeff_splageff", password_digest: Faker::Internet.password)
User.create(username: "sonyabagonia", password_digest: Faker::Internet.password)
User.create(username: "charliecheese46", password_digest: Faker::Internet.password)
User.create(username: "penelope.booze", password_digest: Faker::Internet.password)
User.create(username: "tina_turnip7", password_digest: Faker::Internet.password)
User.create(username: "duh_me_tree", password_digest: Faker::Internet.password)





Event.create(title: "Sophie's birthday", description: "Lets get together to celebrate Sophie turning 25!", date: Faker::Date.between(from: '2020-09-10', to: '2020-09-20'), category: "Zoom Party", user_id: User.all.sample.id, thumbnail: "https://ca-times.brightspotcdn.com/dims4/default/9321c96/2147483647/strip/true/crop/2400x1350+0+125/resize/1200x675!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F91%2F37%2Ff1c988db40109234e505b4891a05%2Fla-zoom-party-etiquette.jpg")
Event.create(title: "Jackbox games!", description: "Get ready for some fun!", date: Faker::Date.between(from: '2020-09-10', to: '2020-09-20'), category: "Game Night", user_id: User.all.sample.id, thumbnail: "https://mk0snacknationnm0gwv.kinstacdn.com/wp-content/uploads/2020/08/virtual_game_night.png")
Event.create(title: "After work drinks", description: "Lets get durnk", date: Faker::Date.between(from: '2020-09-10', to: '2020-09-20'), category: "Happy Hour", user_id: User.all.sample.id, thumbnail: "https://assets.simpleviewinc.com/simpleview/image/upload/c_fill,h_600,q_75,w_1440/v1/clients/palmsprings/HappyHour_shutterstock_9516081f-6dc6-4844-a64a-e8834ecf2831.jpg")
Event.create(title: "Foreign policy discussion", description: "Every country is a threat to our democracy. America", date: Faker::Date.between(from: '2020-09-10', to: '2020-09-20'), category: "Political Discussion", user_id: User.all.sample.id, thumbnail: "https://ourpolitics.net/wp-content/uploads/2018/02/pov620-twitter.jpg")
Event.create(title: "Charades", description: "You already know how to play! I love this game and nobody will ever play with me. Please come.", date: Faker::Date.between(from: '2020-09-10', to: '2020-09-20'), category: "Game Night", user_id: User.all.sample.id, thumbnail: "https://mk0snacknationnm0gwv.kinstacdn.com/wp-content/uploads/2020/08/virtual_game_night.png")
Event.create(title: "Halloween pre-party", description: "I know Halloween isn't until October but there's a global pandemic so we can celebrate it now too...costume mandatory and BYOB", date: Faker::Date.between(from: '2020-09-10', to: '2020-09-20'), category: "Zoom Party", user_id: User.all.sample.id, thumbnail: "https://ca-times.brightspotcdn.com/dims4/default/9321c96/2147483647/strip/true/crop/2400x1350+0+125/resize/1200x675!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F91%2F37%2Ff1c988db40109234e505b4891a05%2Fla-zoom-party-etiquette.jpg")
Event.create(title: "Visiting an annual sanctuary!", description: "This is gonna be soooo cute! Let's all do this AirBnB experience together.", date: Faker::Date.between(from: '2020-09-10', to: '2020-09-20'), category: "AirBnB Experience", user_id: User.all.sample.id, thumbnail: "https://www.nsbuzz.ca/wp-content/uploads/2020/06/airbnbexperiences.jpg")
Event.create(title: "RBG appreciation meeting", description: "Lets talk about how wonderful Ruth Bader Ginsburg is.", date: Faker::Date.between(from: '2020-09-10', to: '2020-09-20'), category: "Political Discussion", user_id: User.all.sample.id, thumbnail: "https://ourpolitics.net/wp-content/uploads/2018/02/pov620-twitter.jpg")
Event.create(title: "Apple martini making", description: "I'm gonna teach you to make a martini and we can all hang out.", date: Faker::Date.between(from: '2020-09-10', to: '2020-09-20'), category: "Happy Hour", user_id: User.all.sample.id, thumbnail: "https://assets.simpleviewinc.com/simpleview/image/upload/c_fill,h_600,q_75,w_1440/v1/clients/palmsprings/HappyHour_shutterstock_9516081f-6dc6-4844-a64a-e8834ecf2831.jpg")
Event.create(title: "Lets drink", description: "Self explanatory", date: Faker::Date.between(from: '2020-09-10', to: '2020-09-20'), category: "Happy Hour", user_id: User.all.sample.id, thumbnail: "https://assets.simpleviewinc.com/simpleview/image/upload/c_fill,h_600,q_75,w_1440/v1/clients/palmsprings/HappyHour_shutterstock_9516081f-6dc6-4844-a64a-e8834ecf2831.jpg")



20.times do
UserEvent.create(user_id: User.all.sample.id, event_id: Event.all.sample.id)
end