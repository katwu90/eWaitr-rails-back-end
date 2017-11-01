# frozen_string_literal: true

class MenuSerializer < ActiveModel::Serializer
  attributes :id, :title, :notes, :editable

  def editable
    scope == object.user
  end
end
