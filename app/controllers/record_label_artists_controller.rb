class RecordLabelArtistsController < ApplicationController
    def index
        record_label = RecordLabel.find(params[:record_label_id])
        @artists = record_label.artists
    end
end