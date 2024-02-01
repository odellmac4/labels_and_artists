# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
RecordLabel.create!(name: "XL Recordings", major_label: false, launched_tours: 100, genre_focus: "Punk Rock")
RecordLabel.create!(name: "Motown", major_label: true, launched_tours: 35, genre_focus: "R&B")
RecordLabel.create!(name: "Sony Music Nashville", major_label: true, launched_tours: 94, genre_focus: "Country")
RecordLabel.create!(name: "Top Dawg Entertainment", major_label: false, launched_tours: 6, genre_focus: "Hip-Hop")
RecordLabel.create!(name: "Dreamville", major_label: false, launched_tours: 3, genre_focus: "Hip-Hop")