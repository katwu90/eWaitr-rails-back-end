# frozen_string_literal: true

class CreateMenuItems < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_items do |t|
      t.string :name, null: false
      t.text :description
      t.integer :price, null: false
      t.string :food_category
      t.references :menu, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
