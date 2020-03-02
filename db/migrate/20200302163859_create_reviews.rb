class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.datetime :date
      t.integer :author_id

      t.timestamps
    end
  end
end
