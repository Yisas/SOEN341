# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(name: 'Jesus', studentID: 27174276, password: 'password')
Student.create(name: 'Frances', studentID: 5252525, password: 'password')
Student.create(name:'Test', studentID: 123123123, password: 'qweqwe')
Course.create(short_name: 'SOEN341', full_name: 'Introduction to Software Process', student_id: 3)
# Appended by `rake heart_seed:init`
HeartSeed::DbSeed.import_all

