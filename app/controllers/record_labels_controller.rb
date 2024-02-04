class RecordLabelsController < ApplicationController
    def index
        @record_labels = RecordLabel.all
    end

    def show
        @record_label = RecordLabel.find(params[:id])
    end

    def new
    end

    def create
    
        record_label = RecordLabel.new({
            name: params[:name],
            major_label: params[:major],
            launched_tours: params[:tours],
            genre_focus: params[:genre]
        })

        record_label.save

        redirect_to '/recordlabels'
    end
end