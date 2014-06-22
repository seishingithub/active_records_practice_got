# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

houses = House.first_or_create([{ name: 'House Stark' }, { name: 'House Lannister' }, { name: 'House Baratheon' }])
people = Person.first_or_create([{ name: 'Arya', description: 'feisty', house: House.find_by_name('House Stark')}, { name: 'Jon Snow', description: 'valiant', house: House.find_by_name('House Stark')}, {name: 'Tyrion', description: 'awesome!', house: House.find_by_name('House Lannister')}])
banners = Banner.first_or_create([{ name: 'Direwolf', file_name: 'direwolf.jpg'}])