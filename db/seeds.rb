# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


airports = Airport.create([{ code: 'IAH' }, { code: 'LAX' }, { code: 'ATL' }, { code: 'DFW' }, { code: 'JFK' }])

iah2lax = Flight.create(from_airport_id: 1, to_airport_id: 2, depart_time: '2020-09-02 12:45:00', duration: 12600)
