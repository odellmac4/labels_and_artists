require 'rails_helper'

RSpec.describe 'Record Labels show page', type: :feature do
    let!(:motown) {RecordLabel.create!(name: "Motown", major_label: true, launched_tours: 35, genre_focus: "R&B")}

    describe 'User story 12: update record label information' do
        it 'has an edit button on the record label show page ' do
            visit "/recordlabels/#{motown.id}"
            expect(page).to have_button("Edit Motown")

            expect(page).to have_content('Motown')
            expect(page).to have_content('Launched Tours: 35')
            expect(page).to have_content('R&B')
        end

        it 'displays record label info in fields and has an update button' do
            visit "/recordlabels/#{motown.id}/edit"
            
            expect(page).to have_content("Edit Motown Information")

            fill_in 'name', with: 'Motown Recordings'
            fill_in 'Number of Launched Tours:', with: '45'
            select 'Country', from: 'Genre Focus:'

            click_button 'Update Record Label'
            expect(current_path).to eq ("/recordlabels/#{motown.id}")

            expect(page).to have_content('Motown Recordings')
            expect(page).to have_content('Launched Tours: 45')
            expect(page).to have_content('Country')

        end
    end
end