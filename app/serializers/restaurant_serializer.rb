class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :specialty, :owner_id

  # do we include has_one
  has_one :address
  has_many :reviews
  belongs_to :owner
end
