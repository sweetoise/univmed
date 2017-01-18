# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'CREATING ROLES'
["superadmin", "admin_user", "user"].each do |role|
  Role.find_or_create_by(name: role) 
end

puts 'SETTING UP DEFAULT USER LOGIN'

user = User.create(username: 'First User', email: 'ayotunds2017@gmail.com', password: 'xpecial5erson')
user.update_attribute(:role_ids, '1')
puts 'New user created: ' << user.username

user2 = User.create(username: 'Second User', email: 'user2@example.com', password: 'bootstrap@ayo')
user2.update_attribute(:role_ids, '2')
puts 'New user created: ' << user2.username