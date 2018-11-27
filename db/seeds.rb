# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "clearing up db"
Journal.destroy_all
Assignment.destroy_all
Challenge.destroy_all
User.destroy_all

puts "creating new db"
user = User.create

a = Challenge.create(name:"7-Day Negotiation", description:"Take this challenge for 7 days, unleash your unrefusable negotiation skill")

b = Assignment.new(status: false)
b.user = user
b.challenge = a
b.save

c = Journal.new(content:"awesome")
c.assignment = b
c.save

c.summary_tag_list.add("awesome", "fun", "cannot wait for tmr")



puts "created #{Journal.count} journals, #{Assignment.count}assignments, #{Challenge.count}challenges, #{User.count}users"
