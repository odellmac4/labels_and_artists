require 'rails_helper'

RSpec.describe Artist , type: :model do
    let!(:motown) {RecordLabel.create!(name: "Motown", major_label: true, launched_tours: 35, genre_focus: "R&B")}
    let!(:brandy) {motown.artists.create!(name: "Brandy", grammy_winning: true, total_streams:1500000000, highest_charted_song: "The Boy is Mine")}
    let!(:sza) {motown.artists.create!(name: "SZA", grammy_winning: true, total_streams: 1000000000, highest_charted_song: "Kill Bill")}
    let!(:jcole) {motown.artists.create!(name: "J. Cole", grammy_winning: false, total_streams: 2000000000, highest_charted_song: "No Role Modelz")
}

    describe '#true_records' do
        it 'displays artists that are grammy winning' do
            expect(Artist.all.true_records).to eq(brandy , sza)
        end
    end
end