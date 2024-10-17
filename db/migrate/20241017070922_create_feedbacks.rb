class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.references :customer, null: false, foreign_key: true
      t.date :date
      t.text :message

      t.timestamps
    end
  end
end
