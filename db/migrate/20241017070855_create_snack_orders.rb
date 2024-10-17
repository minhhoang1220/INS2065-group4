class CreateSnackOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :snack_orders do |t|
      t.references :snack, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
