class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :food_category
  has_one :menu

end
