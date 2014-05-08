# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

user1 = User.create first_name: "Jozko", last_name: "Mrkvicka", password:"heslo", password_confirmation: "heslo", email: "jozko@mrkvicka.sk"
school1 = School.create name: "GymDT"

