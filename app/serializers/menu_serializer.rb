# frozen_string_literal: true

class MenuSerializer < ActiveModel::Serializer
  attributes :id, :title, :notes, :menu_items, :editable

  def editable
    scope == object.user
  end

  def menu_items
    object.menu_items.pluck(:id)
  end
end
