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
TeamUser.destroy_all
Team.destory_all
Challenge.destroy_all
User.destroy_all
Category.destroy_all

category = ['Creativity','Self-Awareness','Communication','Courage','Habit-Building','Productivity']
Category.create!(name: category[0])
Category.create(name: category[1])
Category.create(name: category[2])
Category.create(name: category[3])
Category.create(name: category[4])
Category.create(name: category[5])

p "created #{Category.count} catogories"

Challenge.create(name:"Creative Input", description:"Take this challenge for 7 days, unleash your unrefusable Creativty skill.", category_id: 1)
Challenge.create(name:"Painting", description:"Take this challenge for 7 days, unleash your unrefusable Creativty skill.", category_id: 1)
Challenge.create(name:"Imcomplete Figure", description:"Take this challenge for 7 days, unleash your unrefusable Creativty skill.", category_id: 1)
Challenge.create(name:"Writing", description:"Take this challenge for 7 days, unleash your unrefusable Creativty skill.", category_id: 1)

Challenge.create(name:"Confidence", description:"Take this challenge for 7 days, unleash your unrefusable Self-Awareness skill.", category_id: 2)
Challenge.create(name:"Journaling", description:"Take this challenge for 7 days, unleash your unrefusable Self-Awareness skill.", category_id: 2)
Challenge.create(name:"Minfulness", description:"Take this challenge for 7 days, unleash your unrefusable Self-Awareness skill.", category_id: 2)
Challenge.create(name:"Love", description:"Take this challenge for 7 days, unleash your unrefusable Self-Awareness skill.", category_id: 2)

Challenge.create(name:"Public Speaking", description:"Take this challenge for 7 days, unleash your unrefusable Communication skill.", category_id: 3)
Challenge.create(name:"Negotaition", description:"Take this challenge for 7 days, unleash your unrefusable Communication skill.", category_id: 3)
Challenge.create(name:"Talk to strangers", description:"Take this challenge for 7 days, unleash your unrefusable Communication skill.", category_id: 3)
Challenge.create(name:"Make New Friends", description:"Take this challenge for 7 days, unleash your unrefusable Communication skill.", category_id: 3)

Challenge.create(name:"Courage", description:"Take this challenge for 7 days, unleash your unrefusable Courage skill.", category_id: 4)
Challenge.create(name:"Marathon", description:"Take this challenge for 7 days, unleash your unrefusable Courage skill.", category_id: 4)
Challenge.create(name:"Tolerance", description:"Take this challenge for 7 days, unleash your unrefusable Courage skill.", category_id: 4)
Challenge.create(name:"Resilence", description:"Take this challenge for 7 days, unleash your unrefusable Courage skill.", category_id: 4)

Challenge.create(name:"Sleep Early", description:"Take this challenge for 7 days, unleash your unrefusable Habit-Building skill.", category_id: 5)
Challenge.create(name:"Digital Detox", description:"Take this challenge for 7 days, unleash your unrefusable Habit-Building skill.", category_id: 5)
Challenge.create(name:"Hit The Gym", description:"Take this challenge for 7 days, unleash your unrefusable Habit-Building skill.", category_id: 5)
Challenge.create(name:"Pray", description:"Take this challenge for 7 days, unleash your unrefusable Habit-Building skill.", category_id: 5)

Challenge.create(name:"Morning Hacks", description:"Take this challenge for 7 days, unleash your unrefusable Productivity skill.", category_id: 6)
Challenge.create(name:"Ultimate Sleep", description:"Take this challenge for 7 days, unleash your unrefusable Productivity skill.", category_id: 6)
Challenge.create(name:"Limit Social Activity", description:"Take this challenge for 7 days, unleash your unrefusable Productivity skill.", category_id: 6)
Challenge.create(name:"Break Sessions", description:"Take this challenge for 7 days, unleash your unrefusable Productivity skill.", category_id: 6)
