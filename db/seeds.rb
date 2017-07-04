# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create!(name: 'Funding Societies')

5.times do |i|
  u = User.new
  u.email = "#{i}@gmail.com"
  u.password = '654321'
  u.company_id = 1
  u.save
end

Table.create(company_id: 1)

time = Time.now.to_s.split
Reservation.create(table_id: 1,
                   user_id: 1,
                   date: time[0],
                   from: '12:00:00',
                   to: '12:30:00')
