class CreateRestaurantReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_reviews do |t|
      t.integer :restaurant_id
      t.integer :review_id

      t.timestamps
    end
  end
end
