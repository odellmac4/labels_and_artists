require 'rails_helper'

RSpec.describe RecordLabel, type: :model do

    let!(:motown) {RecordLabel.create!(name: "Motown", major_label: true, launched_tours: 35, genre_focus: "R&B")}
    let!(:tde) {RecordLabel.create!(name: "Top Dawg Entertainment", major_label: false, launched_tours: 6, genre_focus: "Hip-Hop")}
    let!(:dreamville) {RecordLabel.create!(name: "Dreamville", major_label: false, launched_tours: 3, genre_focus: "Hip-Hop")}

    describe 'relationships' do
        it {should have_many :artists}
    end

    describe '#sort' do
        it 'sorts the labels by most recently created' do
            labels = [dreamville, motown, tde]
            expect(labels.sort).to eq ([motown, tde, dreamville])
        end
    end
end