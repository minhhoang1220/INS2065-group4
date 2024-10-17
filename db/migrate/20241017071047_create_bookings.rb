class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :movie_show, null: false, foreign_key: true
      t.references :seating, null: false, foreign_key: true
      t.date :booking_date

      t.timestamps
    end
  end
end
