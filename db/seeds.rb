# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name:"admin", email: "admin@gmail.com", password: 123456, 
password_confirmation: 123456, role: "admin")

User.create(name:"manager", email: "manager@gmail.com", password: 1234567, 
password_confirmation: 1234567, role: "manager")

User.create(name:"user", email: "user@gmail.com", password: 12345678, 
password_confirmation: 12345678, role: "user")