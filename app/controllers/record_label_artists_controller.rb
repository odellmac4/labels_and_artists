class RecordLabelArtistsController < ApplicationController
    def index
        @record_label = RecordLabel.find(params[:record_label_id])
        @artists = @record_label.artists
    end

    def new
        @record_label = RecordLabel.find(params[:record_label_id])
    end

    def create
        @record_label = RecordLabel.find(params[:record_label_id])
        @record_label.artists.create(artist_params)
        redirect_to "/recordlabels/#{@record_label.id}/artists"
    end

    private
    def artist_params
        params.permit(:name, 
            :grammy_winning, 
            :total_streams, 
            :highest_charted_song)
    end
end