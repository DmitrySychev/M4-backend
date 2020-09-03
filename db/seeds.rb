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


10.times {
    User.create(username: Faker::Internet.username, password_digest: Faker::Internet.password, bio: "I am a bio", avatar: "avatar.com")
}

10.times {
    Event.create(title: Faker::Movie.quote, description: Faker::Quotes::Shakespeare.hamlet_quote, date: Faker::Date.between(from: '2020-09-03', to: '2020-09-10'), user_id: User.all.sample.id)
}

10.times {
    UserEvent.create(user_id: User.all.sample.id, event_id: Event.all.sample.id)
}