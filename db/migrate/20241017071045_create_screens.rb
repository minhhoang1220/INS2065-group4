class CreateScreens < ActiveRecord::Migration[7.0]
  def change
    create_table :screens do |t|
      t.references :theatre, null: false, foreign_key: true
      t.string :screen_name
      t.integer :seat_capacity

      t.timestamps
    end
  end
end
