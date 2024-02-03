require 'rails_helper'

RSpec.describe 'Record Labels show page', type: :feature do
    let!(:motown) {RecordLabel.create!(name: "Motown", major_label: true, launched_tours: 35, genre_focus: "R&B")}
    let!(:brandy) {motown.artists.create!(name: "Brandy", grammy_winning: true, total_streams:1500000000, highest_charted_song: "The Boy is Mine")}

    before :each do
        visit "/recordlabels/#{motown.id}"
    end

    it 'displays the name' do

        expect(page).to have_content(motown.name)
    end

    it 'displays whether it is a major label or not' do

        expect(page).to have_content(motown.major_label)
    end

    it 'displays number of launched tours' do

        expect(page).to have_content(motown.launched_tours)
    end

    it 'displays the record label genre focus' do

        expect(page).to have_content(motown.genre_focus)
    end

    describe 'user story 7' do
        it 'displays number of artits that belog to the label' do
            within('#artist_count') do
                expect(page).to have_content("1")
            end
        end
    end

    describe 'user story 8' do
        it 'displays a link on each page leading to all index pages' do
            expect(page).to have_link('Home', href: '/')
            expect(page).to have_link('Record Labels', href: '/recordlabels')
            expect(page).to have_link('Artists', href: '/artists')
        end
    end
end

#<div id=“player_<%= player.id %>”></div>