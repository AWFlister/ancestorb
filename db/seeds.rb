# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Person.create(
    name: 'Sakti',
    sex: 'M',
    birthdate: '30-06-2000',
    address: 'Sleman, DIY',
    birth_order: 1,
    alive: true,
    marriage_status: 'S'
)

Person.create(
    name: 'Lena',
    sex: 'F',
    birthdate: '30-01-2000',
    address: 'Sleman, DIY',
    birth_order: 1,
    alive: true,
    marriage_status: 'S'
)

Person.create(
    name: 'Kiki',
    sex: 'M',
    birthdate: '30-06-2028',
    address: 'Sleman, DIY',
    birth_order: 1,
    alive: true,
    marriage_status: 'S'
)

Person.create(
    name: 'Aimi',
    sex: 'F',
    birthdate: '30-06-2033',
    address: 'Sleman, DIY',
    birth_order: 2,
    alive: true,
    marriage_status: 'S'
)
