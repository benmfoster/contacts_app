# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contact.destroy_all
Contact.create!([
  {first_name: "Paul", last_name: "Ollerton", email: "paul@gmail.com", phone_number: "473-9285", middle_name: "Brooke", bio: nil, active: true, user_id: 1},
  {first_name: "Sarah", last_name: "Heimerdinger", email: "sarah@gmail.com", phone_number: "249-1947", middle_name: "Brooke", bio: nil, active: true, user_id: 1},
  {first_name: "Isreal", last_name: "Hass", email: "isreal@gmail.com", phone_number: "218-0823", middle_name: "Brooke", bio: nil, active: true, user_id: 1},
  {first_name: "Brian", last_name: "Chinn", email: "brian@gmail.com", phone_number: "291-5873", middle_name: "Brooke", bio: nil, active: true, user_id: 1},
  {first_name: "Benjamin", last_name: "Kamp", email: "benjamin@gmail.com", phone_number: "830-1847", middle_name: "Brooke", bio: nil, active: true, user_id: 1},
  {first_name: "Janine", last_name: "Lazarova", email: "janine@gmail.com", phone_number: "392-5891", middle_name: "Brooke", bio: "Loves pina coladas and getting caught in the rain.", active: true, user_id: 1},
  {first_name: "Kaitlyn", last_name: "Higgins", email: "kaitlyn@gmail.com", phone_number: "853-2853", middle_name: "Brooke", bio: "Other people can't spell her last name.", active: true, user_id: 1}
])


# Group.create! ([
# 	{group: "Friends"},
# 	{group: "Family"},
# 	{group: "Business"},
# 	{group: "New York"},
# 	{group: "San Francisco"},
# 	{group: "Chicago"},
# 	{group: "Speed Dial"}
# ])