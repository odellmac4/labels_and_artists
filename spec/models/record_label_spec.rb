require 'rails_helper'

RSpec.describe RecordLabel, type: :model do

    let!(:motown) {RecordLabel.create!(name: "Motown", major_label: true, launched_tours: 35, genre_focus: "R&B")}
    let!(:tde) {RecordLabel.create!(name: "Top Dawg Entertainment", major_label: false, launched_tours: 6, genre_focus: "Hip-Hop")}
    let!(:dreamville) {RecordLabel.create!(name: "Dreamville", major_label: false, launched_tours: 3, genre_focus: "Hip-Hop")}
    let!(:brandy) {motown.artists.create!(name: "Brandy", grammy_winning: true, total_streams:1500000000, highest_charted_song: "The Boy is Mine")}
    let!(:sza) {dreamville.artists.create!(name: "SZA", grammy_winning: true, total_streams: 1000000000, highest_charted_song: "Kill Bill")}
    let!(:jcole) {dreamville.artists.create!(name: "J. Cole", grammy_winning: false, total_streams: 2000000000, highest_charted_song: "No Role Modelz")}

    describe 'relationships' do
        it {should have_many :artists}
    end

    describe '#sort' do
        it 'sorts the labels by most recently created' do
            labels = [dreamville, motown, tde]
            expect(labels.sort).to eq ([motown, tde, dreamville])
        end
    end
end