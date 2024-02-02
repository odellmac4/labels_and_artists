require 'rails_helper'

RSpec.describe 'Artist show page', type: :feature do
    let!(:motown) {RecordLabel.create!(name: "Motown", major_label: true, launched_tours: 35, genre_focus: "R&B")}
    let!(:brandy) {brandy = motown.artists.create!(name: "Brandy", grammy_winning: true, total_streams:1500000000, highest_charted_song: "The Boy is Mine")}
    before :each do
        visit "/artists/#{brandy.id}"
    end
    it 'displays the artist name' do

        expect(page).to have_content(brandy.name)
    end

    it 'displays whether it is grammy award winning artist' do

        expect(page).to have_content(brandy.grammy_winning)
    end

    it 'displays highest charting song' do

        expect(page).to have_content(brandy.highest_charted_song)
    end

    it 'displays the artists total streams' do

        expect(page).to have_content(brandy.total_streams)
    end
end