# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.delete_all
Role.create([{name: 'super_admin'}, {name: 'admin'}, {name: 'approver'}])
puts "role create"
User.delete_all
User.create([{email: 'super_admin@gmail.com', password: 123456}, {email: 'admin@gmail.com', password: 123456}])
puts "user created"
UserRole.delete_all
UserRole.create([{user_id: 1, role_id: 1}, {user_id: 2, role_id:2}])
puts "user role created"