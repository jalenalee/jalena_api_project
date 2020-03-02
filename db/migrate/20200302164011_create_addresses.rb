class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street_name
      t.integer :number
      t.string :city
      t.string :country
      t.string :province
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
