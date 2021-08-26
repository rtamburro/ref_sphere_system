# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding Users"

User.create!(
    first_name: "Ronnie",
    last_name: "Tamburro",
    email: "ronnie.tamburro@example.com", 
    password: "password",
        # role: Faker::Number.between(from: 1, to: 3),
    cell_phone: Faker::Number.number(digits: 10).to_s,
    work_phone: Faker::Number.number(digits: 10).to_s,
    home_phone: Faker::Number.number(digits: 10).to_s,
    address: {
        street_address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr, 
        zip_code: Faker::Address.zip_code}
    )

User.create!(
    first_name: "Colby",
    last_name: "Johnson",
    email: "colby.johnson@example.com", 
    password: "password",
        # role: Faker::Number.between(from: 1, to: 3),
    cell_phone: Faker::Number.number(digits: 10).to_s,
    work_phone: Faker::Number.number(digits: 10).to_s,
    home_phone: Faker::Number.number(digits: 10).to_s,
    address: {
        street_address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr, 
        zip_code: Faker::Address.zip_code}
    )
User.create!(
    first_name: "Victor",
    last_name: "Borges",
    email: "victor.borges@example.com", 
    password: "password",
            # role: Faker::Number.between(from: 1, to: 3),
    cell_phone: Faker::Number.number(digits: 10).to_s,
    work_phone: Faker::Number.number(digits: 10).to_s,
    home_phone: Faker::Number.number(digits: 10).to_s,
    address: {
        street_address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr, 
        zip_code: Faker::Address.zip_code}
    )
User.create!(
    first_name: "Marcus",
    last_name: "Garcia",
    email: "marcus.garcia@example.com", 
    password: "password",
                # role: Faker::Number.between(from: 1, to: 3),
    cell_phone: Faker::Number.number(digits: 10).to_s,
    work_phone: Faker::Number.number(digits: 10).to_s,
    home_phone: Faker::Number.number(digits: 10).to_s,
    address: {
        street_address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr, 
        zip_code: Faker::Address.zip_code}
)
User.create!(
    first_name: "Kyle",
    last_name: "O'Grady",
    email: "kyle.ogrady@example.com", 
    password: "password",
            # role: Faker::Number.between(from: 1, to: 3),
    cell_phone: Faker::Number.number(digits: 10).to_s,
    work_phone: Faker::Number.number(digits: 10).to_s,
    home_phone: Faker::Number.number(digits: 10).to_s,
    address: {
        street_address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr, 
        zip_code: Faker::Address.zip_code}
)
User.create!(
    first_name: "Frank",
    last_name: "Somma",
    email: "frank.somma@example.com", 
    password: "password",
                # role: Faker::Number.between(from: 1, to: 3),
    cell_phone: Faker::Number.number(digits: 10).to_s,
    work_phone: Faker::Number.number(digits: 10).to_s,
    home_phone: Faker::Number.number(digits: 10).to_s,
    address: {
        street_address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr, 
        zip_code: Faker::Address.zip_code}
)



# Game.create!(
#     home_team: "UConn",
#     away_team: "Bryant University",
#     start_time: Tue, 24 Aug 2021 12:00:00.000000000 UTC +00:00,
#     end_time: DateTime.strptime("08/24/2021 8:00", "%m/%d/%Y %H:%M")
# )
# Game.create!(
#     home_team: "Fairfield University",
#     away_team: "NJIT",
#     start_time: Sun, 16 Aug 2021 18:00:00.000000000 UTC +00:00,
#     end_time: Sun, 16 Aug 2021 20:00:00.000000000 UTC +00:00
# )
# Game.create!(
#     home_team: "Dartmouth University",
#     away_team: "Yale University",
#     start_time: Sat, 28 Aug 2021 20:00:00.000000000 UTC +00:00,
#     end_time: Sat, 28 Aug 2021 22:00:00.000000000 UTC +00:00
# )

# Game.create!(
#     home_team: "University of Florida",
#     away_team: "TCU",
#     start_time: Fri, 06 Aug 2021 10:00:00.000000000 UTC +00:00,
#     end_time: Fri, 06 Aug 2021 12:00:00.000000000 UTC +00:00
# )