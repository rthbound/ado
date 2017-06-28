class CreateThings < ActiveRecord::Migration[5.2]
  def change
    create_table :things do |t|
      t.integer :frequency_in_days
      t.string :title
      t.text :notes
      t.integer :duration_in_minutes
      t.string :location

      t.timestamps
    end
  end
end
