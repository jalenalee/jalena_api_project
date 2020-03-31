module Types
  class RestaurantType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false 
    field :specialty, String, null: flase 
    field :owner_id, ID, null: false 
  end
end
