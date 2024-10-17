class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.references :customer, null: false, foreign_key: true
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
