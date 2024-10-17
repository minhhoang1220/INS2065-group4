class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.references :booking, null: false, foreign_key: true
      t.references :snack_order, null: false, foreign_key: true
      t.date :payment_date
      t.decimal :total_amount

      t.timestamps
    end
  end
end
