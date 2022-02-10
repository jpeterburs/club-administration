# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
[
  Date.new(2021, 12, 13),
  Date.new(2021, 12, 23),
  Date.new(2021, 12, 30),

  Date.new(2022, 01, 01),
  Date.new(2022, 01, 01),
  Date.new(2022, 01, 01),
  Date.new(2022, 01, 02),
  Date.new(2022, 01, 05)
].each do |date|
  BankTransaction.create(
    transaction_type: 'SEPA',
    amount: (1..500).to_a.sample,
    purpose: 'Eintrittsgebüren',
    transaction_time: date
  )
end
