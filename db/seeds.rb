# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Deal.destroy_all
Organization.destroy_all
User.destroy_all


org = Organization.create(name: "Great Org")
user = User.create(email: "email@email.com", password: "password", organization: org)
deal_1 = Deal.create(name: "great deal", source: "google.com", rating: 1, status: 1, notes: "This is a great one", organization: org, user: user)
deal_2 = Deal.create(name: "great deal", source: "google.com", rating: 2, status: 2, notes: "This is a great two", organization: org, user: user)
deal_3 = Deal.create(name: "great deal", source: "google.com", rating: 3, status: 3, notes: "This is a great three", organization: org, user: user)
deal_4 = Deal.create(name: "great deal", source: "google.com", rating: 4, status: 4, notes: "This is a great four", organization: org, user: user)
deal_5 = Deal.create(name: "great deal", source: "google.com", rating: 5, status: 5, notes: "This is a great five", organization: org, user: user)
