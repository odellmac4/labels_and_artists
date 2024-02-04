require 'rails_helper'

RSpec.describe 'Record Label creation', type: :feature do

    before :each do
        visit '/recordlabels/new'
    end

    describe 'user story 11' do
        it 'create a new record label and see it on record labels index' do
            fill_in 'name', with: 'Lost Kids'
            check 'Check if a Major Label:'
            fill_in 'Number of Launched Tours:', with: '45'
            select 'R&B', from: 'Genre Focus:'

            click_button 'Add New Record Label'
            expect(current_path).to eq('/recordlabels')

            expect(page).to have_content('Lost Kids')

        end
    end
end