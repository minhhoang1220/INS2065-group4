class CreateSeatings < ActiveRecord::Migration[7.0]
  def change
    create_table :seatings do |t|
      t.references :screen, null: false, foreign_key: true
      t.string :seat_code

      t.timestamps
    end
  end
end
