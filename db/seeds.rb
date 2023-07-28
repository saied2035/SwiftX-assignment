# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
admin1 = User.create(name:"admin1", email: "admin1@gmail.com", password: "admin1123456", 
password_confirmation: "admin1123456", role: "admin")

admin2 = User.create(name:"admin2", email: "admin2@gmail.com", password: "admin2123456", 
password_confirmation: "admin2123456", role: "admin")

admin3 = User.create(name:"admin3", email: "admin3@gmail.com", password: "admin3123456", 
password_confirmation: "admin3123456", role: "admin")

admin4 = User.create(name:"admin4", email: "admin4@gmail.com", password: "admin4123456", 
password_confirmation: "admin4123456", role: "admin")

manager1 = User.create(name:"manager1", email: "manager1@gmail.com", password: "manager1123456", 
password_confirmation: "manager1123456", role: "manager")

manager2 = User.create(name:"manager2", email: "manager2@gmail.com", password: "manager2123456", 
password_confirmation: "manager2123456", role: "manager")

manager3 = User.create(name:"manager3", email: "manager3@gmail.com", password: "manager3123456", 
password_confirmation: "manager3123456", role: "manager")

manager4 = User.create(name:"manager4", email: "manager4@gmail.com", password: "manager4123456", 
password_confirmation: "manager4123456", role: "manager")

user1 = User.create(name:"user1", email: "user1@gmail.com", password: "user1123456", 
password_confirmation: "user1123456", role: "user")

user2 = User.create(name:"user2", email: "user2@gmail.com", password: "user2123456", 
password_confirmation: "user2123456", role: "user")

user3 = User.create(name:"user3", email: "user3@gmail.com", password: "user3123456", 
password_confirmation: "user3123456", role: "user")

user4 = User.create(name:"user4", email: "user4@gmail.com", password: "user4123456", 
password_confirmation: "user4123456", role: "user")

Record.create(time: "1:30", distance: 2, date: "24-6-2023", member: user1, speed: 1.33)
Record.create(time: "1:15", distance: 1.5, date: "25-6-2023", member: user1, speed: 1.2)
Record.create(time: "0:30", distance: 1, date: "26-6-2023", member: user1, speed: 2)
Record.create(time: "0:20", distance: 0.5, date: "27-6-2023", member: user1, speed: 1.5)

Record.create(time: "1:30", distance: 2, date: "24-5-2023", member: user2, speed: 1.33)
Record.create(time: "1:15", distance: 1.5, date: "25-5-2023", member: user2, speed: 1.2)
Record.create(time: "0:30", distance: 1, date: "26-5-2023", member: user2, speed: 2)
Record.create(time: "0:20", distance: 0.5, date: "27-5-2023", member: user2, speed: 1.5)

Record.create(time: "1:30", distance: 2, date: "24-4-2023", member: user3, speed: 1.33)
Record.create(time: "1:15", distance: 1.5, date: "25-4-2023", member: user3, speed: 1.2)
Record.create(time: "0:30", distance: 1, date: "26-4-2023", member: user3, speed: 2)
Record.create(time: "0:20", distance: 0.5, date: "27-4-2023", member: user3, speed: 1.5)

Record.create(time: "1:30", distance: 2, date: "24-3-2023", member: user4, speed: 1.33)
Record.create(time: "1:15", distance: 1.5, date: "25-3-2023", member: user4, speed: 1.2)
Record.create(time: "0:30", distance: 1, date: "26-3-2023", member: user4, speed: 2)
Record.create(time: "0:20", distance: 0.5, date: "27-3-2023", member: user4, speed: 1.5)

Record.create(time: "1:30", distance: 2, date: "24-2-2023", member: manager1, speed: 1.33)
Record.create(time: "1:15", distance: 1.5, date: "25-2-2023", member: manager1, speed: 1.2)
Record.create(time: "0:30", distance: 1, date: "26-2-2023", member: manager1, speed: 2)
Record.create(time: "0:20", distance: 0.5, date: "27-2-2023", member: manager1, speed: 1.5)

Record.create(time: "1:30", distance: 2, date: "24-1-2023", member: manager2, speed: 1.33)
Record.create(time: "1:15", distance: 1.5, date: "25-1-2023", member: manager2, speed: 1.2)
Record.create(time: "0:30", distance: 1, date: "26-1-2023", member: manager2, speed: 2)
Record.create(time: "0:20", distance: 0.5, date: "27-1-2023", member: manager2, speed: 1.5)

Record.create(time: "1:30", distance: 2, date: "24-7-2023", member: manager3, speed: 1.33)
Record.create(time: "1:15", distance: 1.5, date: "25-7-2023", member: manager3, speed: 1.2)
Record.create(time: "0:30", distance: 1, date: "26-7-2023", member: manager3, speed: 2)
Record.create(time: "0:20", distance: 0.5, date: "27-7-2023", member: manager3, speed: 1.5)

Record.create(time: "1:30", distance: 2, date: "24-12-2022", member: manager4, speed: 1.33)
Record.create(time: "1:15", distance: 1.5, date: "25-12-2022", member: manager4, speed: 1.2)
Record.create(time: "0:30", distance: 1, date: "26-12-2022", member: manager4, speed: 2)
Record.create(time: "0:20", distance: 0.5, date: "27-12-2022", member: manager4, speed: 1.5)

Record.create(time: "1:30", distance: 2, date: "24-11-2022", member: admin1, speed: 1.33)
Record.create(time: "1:15", distance: 1.5, date: "25-11-2022", member: admin1, speed: 1.2)
Record.create(time: "0:30", distance: 1, date: "26-11-2022", member: admin1, speed: 2)
Record.create(time: "0:20", distance: 0.5, date: "27-11-2022", member: admin1, speed: 1.5)

Record.create(time: "1:30", distance: 2, date: "24-10-2022", member: admin2, speed: 1.33)
Record.create(time: "1:15", distance: 1.5, date: "25-10-2022", member: admin2, speed: 1.2)
Record.create(time: "0:30", distance: 1, date: "26-10-2022", member: admin2, speed: 2)
Record.create(time: "0:20", distance: 0.5, date: "27-10-2022", member: admin2, speed: 1.5)

Record.create(time: "1:30", distance: 2, date: "24-9-2022", member: admin3, speed: 1.33)
Record.create(time: "1:15", distance: 1.5, date: "25-9-2022", member: admin3, speed: 1.2)
Record.create(time: "0:30", distance: 1, date: "26-9-2022", member: admin3, speed: 2)
Record.create(time: "0:20", distance: 0.5, date: "27-9-2022", member: admin3, speed: 1.5)

Record.create(time: "1:30", distance: 2, date: "24-8-2022", member: admin4, speed: 1.33)
Record.create(time: "1:15", distance: 1.5, date: "25-8-2022", member: admin4, speed: 1.2)
Record.create(time: "0:30", distance: 1, date: "26-8-2022", member: admin4, speed: 2)
Record.create(time: "0:20", distance: 0.5, date: "27-8-2022", member: admin4, speed: 1.5)