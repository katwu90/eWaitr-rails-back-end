class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity
  has_one :customer
  has_one :menu_item
end
