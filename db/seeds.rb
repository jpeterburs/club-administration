# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
90.times do
  BankTransaction.create(
    transaction_type: 'SEPA',
    amount: (1..99).to_a.sample,
    purpose: 'Eintrittsgebüren',
    transaction_time: Time.at(rand * Time.now.to_f)
  )
end
