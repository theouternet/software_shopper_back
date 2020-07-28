# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





software_list = [
  ["Quicken", "Do taxes.", "Accounting"],
  ["Cakewalk", "Make music.", "Recording"],
  ["InDesign", "Edit the paper.", "Editing"],
]

software_list.each do |n, d, c|
   software = Software.create!(name: n, description: d)
    software.category!(name: c)
  end