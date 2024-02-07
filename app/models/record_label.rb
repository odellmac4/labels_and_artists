class RecordLabel < ApplicationRecord
    has_many :artists

    def sort
        RecordLabel.order(:created_at)
        require'pry';binding.pry
    end

    def true
        self.artists.find do |artist|
            artist.grammy_winning == true
        end
    end
end
