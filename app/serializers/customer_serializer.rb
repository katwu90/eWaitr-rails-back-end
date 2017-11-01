class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :allergies, :seat, :notes
  has_one :user
end
