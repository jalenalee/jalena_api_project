module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # field defines the query which is restaurant and we are returning an array of RestaurantTypes 
    field :restaurants, [RestaurantType], null: true do
      description: "Find all restaurants"
    end 

    # Fetch this information from the database 
    def restaurants
      Restaurants.all
    end
    
  end
end
