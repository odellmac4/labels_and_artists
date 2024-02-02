require 'rails_helper'

RSpec.describe 'Artists index page', type: :feature do
    let!(:motown) {RecordLabel.create!(name: "Motown", major_label: true, launched_tours: 35, genre_focus: "R&B")}
    let!(:brandy) {brandy = motown.artists.create!(name: "Brandy", grammy_winning: true, total_streams:1500000000, highest_charted_song: "The Boy is Mine")}

    before :each do
        visit "/artists"
    end
    
    it 'displays the name of each artist' do

        expect(page).to have_content(brandy.name)
    end

    it 'displays whether they have won a grammy or not' do
        expect(page).to have_content(brandy.grammy_winning)
    end

    it 'displays total streams' do
        expect(page).to have_content(brandy.highest_charted_song)
    end
end