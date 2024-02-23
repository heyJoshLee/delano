require "faker"

Deal.destroy_all
Organization.destroy_all
User.destroy_all
Activity.destroy_all
Business.destroy_all
Contact.destroy_all


statuses = ["friend", "lead", "client", "cold"]
stages = ["talking", "proposal sent", "signed", "closed"]
deal_types = ["one-off", "retainer", "audit"]
# create organizations
5.times { Organization.create(name: Faker::TvShows::VentureBros.organization) }
org = Organization.first.id

# create user to log in
user = User.create(
  email: "email@email",
  password: "password",
  organization: org
)

# create users
10.times do 
  User.create(
    organization: org,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password"
  )
end

# create businesses
50.times do 
  Business.create(
    organization: org,
    name: Faker::TvShows::VentureBros.organization,
    url: Faker::Internet.url,
    notes: Faker::Lorem.paragraph,
    phone: Faker::PhoneNumber.cell_phone,
    address_line_1: Faker::Address.street_address,
    address_line_2: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    country: Faker::Address.country,
    status: statuses.shuffle.first,

  )

end

# create contacts
50.times do 
  Contact.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    title: Faker::Job.position,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    status: statuses.shuffle.first,
    notes: Faker::Lorem.paragraph,
    organization_id: org.id,
    business: Business.shuffle.first
  )
end

# create deals
10.times do 
  Deal.create(
    name: Faker::Marketing.buzzwords.captialize,
    source: Faker::Internet.url,
    rating: [1, 2, 3, 4, 5].shuffle.first,
    status: statuses.shuffle.first,
    notes: Faker::Lorem.paragraph,
    organization: org,
    user: User.shuffle.first,
    value: Faker::Number.positive(from: 500, to: 15000),
    priority: statuses.shuffle.first,
    stage: stages.shuffle.first,
    contact_id: Contact.shuffle.first.id,
    deal_type: deal_types.shuffle.first,
    category: Faker::Company.industry,
    close_date: Faker::Date.between(from: 90.days.ago, to: 90.days.later)

  )
end

