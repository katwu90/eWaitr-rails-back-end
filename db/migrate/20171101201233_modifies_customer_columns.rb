class ModifiesCustomerColumns < ActiveRecord::Migration[5.1]
  def change
    change_table :customers do |t|
      t.change :name, :string, null: false
    end
  end
end
