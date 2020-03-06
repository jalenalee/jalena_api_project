class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_one :restaurant
end
