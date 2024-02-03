class RecordLabel < ApplicationRecord
    has_many :artists

    def sort
        RecordLabel.order(:created_at)
    end
end
