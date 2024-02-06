require 'rails_helper'

RSpec.describe 'Create new artist for record label', type: :feature do
    let!(:motown) {RecordLabel.create!(name: "Motown", major_label: true, launched_tours: 35, genre_focus: "R&B")}
    let!(:brandy) {motown.artists.create!(name: "Brandy", grammy_winning: true, total_streams:1500000000, highest_charted_song: "The Boy is Mine")}
    before :each do
        visit "/recordlabels/#{motown.id}/artists/new"
    end

    describe 'user story 13 for to create artist'
    it 'has a form to create new artist' do

        fill_in 'name', with: 'Lost Kids'
        check "Grammy winning"
        fill_in 'Total streams', with: '5'
        fill_in 'Highest charted song', with: 'ABC'
        click_on 'Add New Artist'
        expect(current_path).to eq("/recordlabels/#{motown.id}/artists")
        expect(page).to have_content("Lost Kids")
    end
end