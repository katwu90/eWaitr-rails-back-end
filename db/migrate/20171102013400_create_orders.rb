class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :customer, index: true, foreign_key: true, null: false
      t.references :menu_item, index: true, foreign_key: true, null: false
      t.integer :quantity, null: false

      t.timestamps null: false
    end
  end
end
