# frozen_string_literal: true

class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :title, null: false
      t.text :notes
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
