# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.destroy_all
UserGame.destroy_all
User.destroy_all

game1 = Game.create(name: "Math", time_to_complete_round: 20, description: "You have 20 seconds to answer the math question, as you get better the math problems get Harder. Good Luck!")

user1 = User.create(username: "bob", email: "bob@bob.bob", password: "bob")
user2 = User.create(username: "beth", email: "beth@beth.beth", password: "beth")
user3 = User.create(username: "drake", email: "drake@drake.drake", password: "drake")

user_game1 = UserGame.create(user_id: user1.id, game_id: game1.id, score: 0)
user_game2 = UserGame.create(user_id: user2.id, game_id: game1.id, score: 0)
user_game3 = UserGame.create(user_id: user3.id, game_id: game1.id, score: 0)