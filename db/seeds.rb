puts "Deleting previous records"

User.destroy_all
Ticket.destroy_all
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

puts "Creating tickets"

ticket1 = Ticket.create(category: "Ruby", description: "I am having problems with associating my models. Please help!!!", user_id: user1.id)
ticket2 = Ticket.create(category: "CSS", description: "Could someone please help me with centering my divs!!", user_id: user4.id)

puts "Creating reviewers"

reviewer1 = Reviewer.create(user_id: user3.id, ticket_id: ticket1.id)
reviewer2 = Reviewer.create(user_id: user5.id, ticket_id: ticket2.id)

puts "Done and dusted💪🏽"
