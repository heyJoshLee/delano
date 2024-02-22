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
user = User.create(email: "email@email.com", password: "password")
user.organization = org
user.save


5.times do |n| 
  temp_deal = Deal.new(name: "great deal #{n}", source: "google.com", rating: n, status: n, notes: "This is a great #{n}")
  temp_deal.organization = org
  temp_deal.save
end


