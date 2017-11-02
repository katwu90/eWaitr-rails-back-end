# frozen_string_literal: true

class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :allergies, :seat, :notes, :orders
  def orders
    object.orders.pluck(:id)
  end
end
