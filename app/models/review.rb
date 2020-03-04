class Review < ApplicationRecord
  has_many :restaurant_reviews
  has_many :restaurants, through: :restaurant_reviews
  belongs_to :author
end
