project1 = Project.create(name: 'Ironhack', description: 'Ironhack is a project.')
project2 = Project.create(name: 'Timetracking', description: 'Tracks the time spend on projects')
project3 = Project.create(name: 'Recipes', description: 'Track my favorite recipes')

project1.time_entries.create(hours: 1, minutes: 45, date: Time.new(2016,4,16,13,30))
project1.time_entries.create(hours: 0, minutes: 30, date: Time.now)
project2.time_entries.create(hours: 0, minutes: 30, date: Time.now)
project3.time_entries.create(hours: 2, minutes: 0, date: Time.new(2016,4,17,13,0))

# entry = project.time_entries.new
# entry.minutes = 32
# entry.hours = 1
# entry.save

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
