class CreateMovieShows < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_shows do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :theatre, null: false, foreign_key: true
      t.date :date
      t.decimal :price

      t.timestamps
    end
  end
end
