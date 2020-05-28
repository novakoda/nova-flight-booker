# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


airports = Airport.create([{ code: 'IAH' }, { code: 'LAX' }, { code: 'ATL' }, { code: 'DFW' }, { code: 'JFK' }])

iah2lax = Flight.create([
  {origin_id: 1, destination_id: 2, depart_time: '2020-09-02 22:45:00', duration: 12600},
  {origin_id: 1, destination_id: 3, depart_time: '2020-08-23 15:15:00', duration: 10500},
  {origin_id: 1, destination_id: 4, depart_time: '2020-06-11 01:10:00', duration: 5000},
  {origin_id: 1, destination_id: 5, depart_time: '2020-07-18 11:30:00', duration: 13400},

  {origin_id: 2, destination_id: 1, depart_time: '2020-09-30 12:35:00', duration: 12600},
  {origin_id: 2, destination_id: 3, depart_time: '2020-07-04 15:25:00', duration: 22300},
  {origin_id: 2, destination_id: 4, depart_time: '2020-08-13 23:10:00', duration: 12000},
  {origin_id: 2, destination_id: 5, depart_time: '2020-06-16 07:55:00', duration: 23200},

  {origin_id: 3, destination_id: 1, depart_time: '2020-06-05 15:30:00', duration: 10500},
  {origin_id: 3, destination_id: 2, depart_time: '2020-07-16 21:05:00', duration: 22300},
  {origin_id: 3, destination_id: 4, depart_time: '2020-08-29 09:45:00', duration: 10000},
  {origin_id: 3, destination_id: 5, depart_time: '2020-09-03 03:40:00', duration: 7500},

  {origin_id: 4, destination_id: 1, depart_time: '2020-07-28 16:20:00', duration: 5000},
  {origin_id: 4, destination_id: 2, depart_time: '2020-09-14 11:15:00', duration: 12000},
  {origin_id: 4, destination_id: 3, depart_time: '2020-08-17 04:00:00', duration: 10000},
  {origin_id: 4, destination_id: 5, depart_time: '2020-06-09 19:50:00', duration: 11500},

  {origin_id: 5, destination_id: 1, depart_time: '2020-08-11 13:10:00', duration: 13400},
  {origin_id: 5, destination_id: 2, depart_time: '2020-09-22 03:35:00', duration: 23200},
  {origin_id: 5, destination_id: 3, depart_time: '2020-06-19 16:25:00', duration: 7500},
  {origin_id: 5, destination_id: 4, depart_time: '2020-07-22 11:05:00', duration: 11500}
])
