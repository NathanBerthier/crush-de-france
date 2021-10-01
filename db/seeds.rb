# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroy all users'
City.destroy_all
User.destroy_all
puts 'Create user and cities...'
user = User.create!(username: 'Nathan', email: 'nathan.berth69@gmail.com', password: '123456')
City.create!(name: 'Bourg en Bresse', short_name: 'Bourg', subscription_end: DateTime.now, lastupload_log: 'Prout', lastupload_date: DateTime.now, user: user)
City.create!(name: 'Lyon', short_name: 'Lyon', subscription_end: DateTime.now, lastupload_log: 'Prout', lastupload_date: DateTime.now, user: user)
City.create!(name: 'Paris', short_name: 'Paris', subscription_end: DateTime.now, lastupload_log: 'Prout', lastupload_date: DateTime.now, user: user)
puts 'Finish'
