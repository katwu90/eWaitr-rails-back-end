# frozen_string_literal: true

class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :food_category, :menu_id
  # has_one :menu
end
