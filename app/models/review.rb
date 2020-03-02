class Review < ApplicationRecord
  has_many :restaurant_reviews
  has_many :restaurant, through: :restaurant_reviews
  belongs_to :author
end
