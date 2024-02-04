require 'rails_helper'

RSpec.describe 'Record Labels index page', type: :feature do
    let!(:xl) {RecordLabel.create!(name: "XL Recordings", major_label: false, launched_tours: 100, genre_focus: "Punk Rock")}
    let!(:tde) {RecordLabel.create!(name: "Top Dawg Entertainment", major_label: false, launched_tours: 6, genre_focus: "Hip-Hop")}
    let!(:motown) {RecordLabel.create!(name: "Motown", major_label: true, launched_tours: 35, genre_focus: "R&B")}

    before :each do
        visit '/recordlabels'
    end

    it 'see the name of each record label' do

        expect(page).to have_content(xl.name)
    end

    describe 'record label names link to their own show page' do
        it 'will direct them to individual record show page' do

            click_on xl.name

            expect(current_path).to eq("/recordlabels/#{xl.id}")
        end

    end

    describe 'user story 6' do
        it 'order of record labels to be ordered by most recently created' do
            expect("XL Recordings").to appear_before("Top Dawg Entertainment")

            expect(motown.name).to_not appear_before(tde.name)
        end
    end

    describe 'user story 11' do
        it 'has a button to create a new record label' do
            expect(page).to have_button('Add New Record Label')
        end
    end
end