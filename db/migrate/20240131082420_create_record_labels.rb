class CreateRecordLabels < ActiveRecord::Migration[7.1]
  def change
    create_table :record_labels do |t|
      t.string :name
      t.boolean :major_label
      t.integer :launched_tours
      t.string :genre_focus

      t.timestamps
    end
  end
end
