class CreateLabs < ActiveRecord::Migration[8.0]
  def change
    create_table :labs do |t|
      t.string :title
      t.text :description
      t.string :status
      t.integer :estimate_in_hours
      t.integer :time_spent_in_seconds
      t.date :date_started
      t.date :date_completed

      t.timestamps
    end
  end
end
