class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :movie_title
      t.string :genre
      t.date :release_date
      t.string :director
      t.time :duration
      t.string :status

      t.timestamps
    end
  end
end
