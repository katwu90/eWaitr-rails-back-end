class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.text :allergies
      t.integer :seat, null: false
      t.text :notes
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
