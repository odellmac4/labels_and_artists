require 'rails_helper'

RSpec.describe 'Update artist from artist show page', type: :feature do
    let!(:motown) {RecordLabel.create!(name: "Motown", major_label: true, launched_tours: 35, genre_focus: "R&B")}
    let!(:brandy) {motown.artists.create!(name: "Brandy", grammy_winning: true, total_streams:1500000000, highest_charted_song: "The Boy is Mine")}
    
    before :each do
        visit "/artists/#{brandy.id}/edit"
    end

    describe 'user story 14' do
        it 'displays for to edit artist info' do
            expect(page).to have_content("Update Brandy Information")

            fill_in 'name', with: 'Brandy Norwood'
            check 'Grammy winning'
            fill_in 'Total streams', with: '800900'
            fill_in 'Highest charted song', with: 'Top of the World'

            click_button 'Update Artist'
            expect(current_path).to eq ("/artists/#{brandy.id}")

            expect(page).to have_content('Norwood')
            expect(page).to have_content('800900')
            expect(page).to have_content('Top of the World')
        end
    end
end