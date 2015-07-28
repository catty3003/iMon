# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ruby encoding: utf-8
user1 = User.create!(username: "Alice", email: 'alice@alice.com', :password => 'topsecret', :password_confirmation => 'topsecret', admin: true, age: 18)
