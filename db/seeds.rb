# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ruby encoding: utf-8
user1 = User.create!(username: "Alice", email: 'alice@alice.com', :password => 'topsecret', :password_confirmation => 'topsecret', admin: true, age: 18)
user2 = User.create!(username: "Bob", email: 'bob@bob.com', :password => 'topsecret', :password_confirmation => 'topsecret', admin: false, age: 22)


project1= Project.create(name: "Todo-Applikation", deadline: Date.today + 7.days, question: "Was steht an?", done: false, user_id: 1)
project2= Project.create(name: "Rails for Zombies", deadline: Date.today - 2.days, question: "Was machen Sie zur Zombiekalypse?", done: false, user_id: 2)
project3= Project.create(name: "Übung 6: Rails Account", deadline: Date.today - 4.days, question: "Wie erstellt man einen Rails Account?", done: false, user_id: 1)
project4= Project.create(name: "Übung 1: FizzBuzz", deadline: Date.today - 26.days, question: "Was kann das sein?", done: true, user_id: 2)
project5= Project.create(name: "Übung 2: Ruby Konto", deadline: Date.today - 20.days, question: "Wann erstellt man einen Konto?", done: true, user_id: 2)


user1.ideas.create(post: "my idea for you", project_id: project1.id)
user1.ideas.create(post: "my idea for you", project_id: project1.id)
user1.ideas.create(post: "my idea for you", project_id: project1.id)
user2.ideas.create(post: "the best for you", project_id: project1.id)
user2.ideas.create(post: "the best for you", project_id: project1.id)
user1.ideas.create(post: "my idea for you", project_id: project1.id)