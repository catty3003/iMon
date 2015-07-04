# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ruby encoding: utf-8
Project.create(name: "Todo-Applikation", deadline: Date.today + 7.days, duration: 2, done: false)
Project.create(name: "Idee für eigene Web-Applikation", deadline: Date.today + 10.days, duration: 2, done: false)
Project.create(name: "Rails for Zombies", deadline: Date.today - 2.days, duration: 3, done: false)
Project.create(name: "Übung 6: Rails Account", deadline: Date.today - 4.days, duration: 3, done: false)
Project.create(name: "Übung 1: FizzBuzz", deadline: Date.today - 26.days, duration: 4, done: true)
Project.create(name: "Übung 2: Ruby Konto", deadline: Date.today - 20.days, duration: 5, done: true)