# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'DEFAULT USERS'
user = User.find_or_create_by_email({name: 'test user' , role: 'User', email: 'user@test.com', password: 'password', password_confirmation: 'password'})
puts 'user email: ' << user.email
puts 'user password: ' << 'password'

puts 'DEFAULT Customer Service'
user = User.find_or_create_by_email({name: 'test user' , role: 'Customer Service', email: 'service@test.com', password: 'password', password_confirmation: 'password'})
puts 'service email: ' << user.email
puts 'service password: ' << 'password'
