# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Destroying channels"

Channel.destroy_all
p "Destroying Users"
User.destroy_all

p "Destroying Messages"
Message.destroy_all

p "creating channels"

general = Channel.create(name: "general")
paris = Channel.create(name: "paris")
react = Channel.create(name: "react")

p "creating users"

user1 = User.create( email: "test@test.com", password: "123123")
user2 = User.create( email: "test1@test.com", password: "123123")

p "creating messages"

Message.create(
    user: user1,
    channel: general,
    content: "Welcome to #general!")

Message.create(
    user: user2,
    channel: general,
    content: "Hello how are you all doing?")

Message.create(
    user: user1,
    channel: paris,
    content: "Welcome to #paris!")

Message.create(
    user: user2,
    channel: paris,
    content: "Hello how are you all doing?")

Message.create(
    user: user1,
    channel: react,
    content: "Welcome to #react!")

Message.create(
    user: user2,
    channel: react,
    content: "Hello how are you all doing?")

p "#{Channel.count} channels created"
p "#{User.count} users created"
p "#{Message.count} messages created"

