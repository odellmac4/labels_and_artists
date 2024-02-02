require 'rails_helper'

RSpec.describe 'Record Labels index page', type: :feature do
    it 'see the name of each record label' do
        xl = RecordLabel.create!(name: "XL Recordings", major_label: false, launched_tours: 100, genre_focus: "Punk Rock")

        visit '/recordlabels'

        expect(page).to have_content(xl.name)
    end

    describe 'record label names link to their own show page' do
        it 'will direct them to individual record show page' do
            xl = RecordLabel.create!(name: "XL Recordings", major_label: false, launched_tours: 100, genre_focus: "Punk Rock")

            visit "/recordlabels/"

            click_on xl.name

            expect(current_path).to eq("/recordlabels/#{xl.id}")
        end

    end
end