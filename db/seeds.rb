# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
xl_recordings = RecordLabel.create!(name: "XL Recordings", major_label: false, launched_tours: 100, genre_focus: "Punk Rock")
motown = RecordLabel.create!(name: "Motown", major_label: true, launched_tours: 35, genre_focus: "R&B")
sony_nashville = RecordLabel.create!(name: "Sony Music Nashville", major_label: true, launched_tours: 94, genre_focus: "Country")
tde = RecordLabel.create!(name: "Top Dawg Entertainment", major_label: false, launched_tours: 6, genre_focus: "Hip-Hop")
dreamville = RecordLabel.create!(name: "Dreamville", major_label: false, launched_tours: 3, genre_focus: "Hip-Hop")
motown.artists.create!(name: "Brandy", grammy_winning: true, total_streams:1500000000, highest_charted_song: "The Boy is Mine")
dreamville.artists.create!(name: "J. Cole", grammy_winning: true, total_streams: 2000000000, highest_charted_song: "No Role Modelz")
tde.artists.create!(name: "SZA", grammy_winning: true, total_streams: 1000000000, highest_charted_song: "Kill Bill")
