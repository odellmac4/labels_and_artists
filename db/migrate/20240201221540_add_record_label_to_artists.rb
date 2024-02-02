class AddRecordLabelToArtists < ActiveRecord::Migration[7.1]
  def change
    add_reference :artists, :record_label, null: false, foreign_key: true
  end
end
