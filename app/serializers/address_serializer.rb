class AddressSerializer < ActiveModel::Serializer
  attributes :id, :street_name, :number, :city, :province, :country, :restaurant_id

  belongs_to :restaurant
end
