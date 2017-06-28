class CreateDoings < ActiveRecord::Migration[5.2]
  def change
    create_table :doings do |t|
      t.integer :duration_in_minutes
      t.references :thing, foreign_key: true
      t.datetime :done_at

      t.timestamps
    end
  end
end
