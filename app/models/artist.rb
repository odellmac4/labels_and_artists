class Artist < ApplicationRecord
    belongs_to :record_label

    def true_records
        Artist.all.find{|artist| artist if artist.grammy_winning == true}
    end
end