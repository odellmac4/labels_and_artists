require 'rails_helper'

RSpec.describe 'Record Labels show page', type: :feature do
    before :each do
        @xl = RecordLabel.create!(name: "XL Recordings", major_label: false, launched_tours: 100, genre_focus: "Punk Rock")

    end
    it 'displays the name' do

        visit "/recordlabels/#{@xl.id}"

        expect(page).to have_content(@xl.name)
    end

    it 'displays whether it is a major label or not' do
        visit "/recordlabels/#{@xl.id}"

        expect(page).to have_content(@xl.major_label)
    end

    it 'displays number of launched tours' do
        visit "/recordlabels/#{@xl.id}"

        expect(page).to have_content(@xl.launched_tours)
    end

    it 'displays the record label genre focus' do
        visit "/recordlabels/#{@xl.id}"

        expect(page).to have_content(@xl.genre_focus)
    end
end

# <div id=“player_<%= player.id %>”></div>