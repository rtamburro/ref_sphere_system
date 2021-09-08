# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding Users..."

User.create!(
    first_name: "Ronnie",
    last_name: "Tamburro",
    email: "ronnie.tamburro@example.com", 
    password: "password",
    cell_phone: "2032531643",
    work_phone: "2032531643",
    home_phone: "2033225554",
    role: 0,
    grade: 0,
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
    cell_phone: Faker::PhoneNumber.cell_phone.to_s,
    work_phone: Faker::PhoneNumber.cell_phone.to_s,
    home_phone: Faker::PhoneNumber.cell_phone.to_s,
    role: 0,
    grade: 1,
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
    cell_phone: Faker::PhoneNumber.cell_phone.to_s,
    work_phone: Faker::PhoneNumber.cell_phone.to_s,
    home_phone: Faker::PhoneNumber.cell_phone.to_s,
    role: 0,
    grade: 1,
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
    cell_phone: Faker::PhoneNumber.cell_phone.to_s,
    work_phone: Faker::PhoneNumber.cell_phone.to_s,
    home_phone: Faker::PhoneNumber.cell_phone.to_s,
    role: 0,
    grade: 1,
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
    cell_phone: Faker::PhoneNumber.cell_phone.to_s,
    work_phone: Faker::PhoneNumber.cell_phone.to_s,
    home_phone: Faker::PhoneNumber.cell_phone.to_s,
    role: 0,
    grade: 0,
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
    cell_phone: Faker::PhoneNumber.cell_phone.to_s,
    work_phone: Faker::PhoneNumber.cell_phone.to_s,
    home_phone: Faker::PhoneNumber.cell_phone.to_s,
    role: 0,
    grade: 1,
    address: {
        street_address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr, 
        zip_code: Faker::Address.zip_code}
)
User.create!(
    first_name: "John",
    last_name: "Collins",
    email: "john.collins@example.com", 
    password: "password",
    cell_phone: Faker::PhoneNumber.cell_phone.to_s,
    work_phone: Faker::PhoneNumber.cell_phone.to_s,
    home_phone: Faker::PhoneNumber.cell_phone.to_s,
    role: 2,
    grade: 2,
    address: {
        street_address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr, 
        zip_code: Faker::Address.zip_code}
)

puts "Seeding Leagues..."

League.create!(title: "NCAA D1")
League.create!(title: "NCAA D2")
League.create!(title: "NCAA D3")
League.create!(title: "UPSL - Premier")
League.create!(title: "UPSL - Division I")
League.create!(title: "UPSL - Women")
League.create!(title: "USL-A")
League.create!(title: "USL-2")
League.create!(title: "USL-1")
League.create!(title: "USL-C")
League.create!(title: "MLS Next")
League.create!(title: "NYCSL")

puts "Seeding Venues..."

Venue.create!(
    name: "Venue 1",
    address: {
        street_address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr, 
        zip_code: Faker::Address.zip_code}
)
Venue.create!(
    name: "Venue 2",
    address: {
        street_address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr, 
        zip_code: Faker::Address.zip_code}
)
Venue.create!(
    name: "Venue 3",
    address: {
        street_address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr, 
        zip_code: Faker::Address.zip_code}
)
Venue.create!(
    name: "Venue 4",
    address: {
        street_address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr, 
        zip_code: Faker::Address.zip_code}
)

puts "Seeding Games..."

Game.create!(
    league_id: 1,
    venue_id: 1,
    home_team: "UConn",
    away_team: "Bryant University",
    start_time: DateTime.new(2021, 8, 26,  12,  0,  0),
    end_time: DateTime.new(2021, 8, 26,  14,  0,  0)
)
Game.create!(
    league_id: 1,
    venue_id: 1,
    home_team: "Fairfield University",
    away_team: "NJIT",
    start_time: DateTime.new(2021, 8, 13,  17,  0,  0),
    end_time: DateTime.new(2021, 8, 13,  19,  0,  0)
)
Game.create!(
    league_id: 1,
    venue_id: 1,
    home_team: "Dartmouth University",
    away_team: "Yale University",
    start_time: DateTime.new(2021, 8, 24,  14,  30,  0),
    end_time: DateTime.new(2021, 8, 24,  16,  30,  0)
)
Game.create!(
    league_id: 1,
    venue_id: 1,
    home_team: "University of Florida",
    away_team: "TCU",
    start_time: DateTime.new(2021, 8, 26,  11,  0,  0),
    end_time: DateTime.new(2021, 8, 26,  13,  0,  0)
)

puts "Seeding Assignments..."

Assignment.create!(
    game_id: 1,
    center_referee_id: 1,
    assistant_referee_1_id: 2, 
    assistant_referee_2_id: 3,
    fourth_official_id: 4
)
Assignment.create!(
    game_id: 2,
    center_referee_id: 1,
    assistant_referee_1_id: 2, 
    assistant_referee_2_id: 3,
    fourth_official_id: 4
)
Assignment.create!(
    game_id: 3,
    center_referee_id: 1,
    assistant_referee_1_id: 2, 
    assistant_referee_2_id: 3,
    fourth_official_id: 4
)
Assignment.create!(
    game_id: 4,
    center_referee_id: 1,
    assistant_referee_1_id: 2, 
    assistant_referee_2_id: 3,
    fourth_official_id: 4
)
