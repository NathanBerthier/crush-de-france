# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroy all'
Post.destroy_all
City.destroy_all
User.destroy_all
puts 'Create user and cities...'

user = User.create!(username: 'Nathan', email: 'nathan.berth69@gmail.com', password: '123456')
User.create!(username: 'Toto', email: 'toto@gmail.com', password: '123456')
User.create!(username: 'Tutu', email: 'tutu@gmail.com', password: '123456')
User.create!(username: 'Titi', email: 'titi@gmail.com', password: '123456')

City.create!(name: 'Bourg en Bresse', short_name: 'bourg', subscription_end: (DateTime.current + 3), lastupload_log: 'Prout', lastupload_date: DateTime.current, user: user)
City.create!(name: 'Lyon', short_name: 'lyon', subscription_end: (DateTime.current - 2), lastupload_log: 'Prout', lastupload_date: DateTime.current, user: user)
City.create!(name: 'Paris', short_name: 'paris', subscription_end: (DateTime.current + 10), lastupload_log: 'Prout', lastupload_date: DateTime.current, user: user)
puts 'Finish'
