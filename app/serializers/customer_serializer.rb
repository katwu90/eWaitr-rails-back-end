class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :allergies, :seat, :notes
  has_one :user
end
