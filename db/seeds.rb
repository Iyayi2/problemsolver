puts "Deleting previous records"

User.destroy_all
Reviewer.destroy_all

puts "Creating users"

user1 = User.create(first_name: "Osazuwa", email: "osazuwa@gmail.com", password: "123456")
user2 = User.create(first_name: "Odogwu", email: "odogwu@gmail.com", password: "123456")
user3 = User.create(first_name: "Osamudiamen", email: "osamudiamen@gmail.com", password: "123456")
user4 = User.create(first_name: "Osahenoma", email: "osahenoma@gmail.com", password: "123456")
user5 = User.create(first_name: "Esosa", email: "Esosa@gmail.com", password: "123456")
user6 = User.create(first_name: "Uche", email: "uche@gmail.com", password: "123456")
user7 = User.create(first_name: "Igho", email: "igho@gmail.com", password: "123456")
user8 = User.create(first_name: "Evbaguehita", email: "evbaguehita@gmail.com", password: "123456")
user9 = User.create(first_name: "Precious", email: "precious@gmail.com", password: "123456")
user10 = User.create(first_name: "Ikechukwu", email: "ikechukwu@gmail.com", password: "123456")

puts "Done!! 😋"

puts "Creating reviewers"

reviewer1 = Reviewer.create(user_id: user3.id, first_name: user3.first_name)
reviewer2 = Reviewer.create(user_id: user5.id, first_name: user5.first_name)

puts "Done and dusted💪🏽"
