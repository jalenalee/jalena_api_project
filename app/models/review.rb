class Review < ApplicationRecord
  has_many :restaurant_reviews
  has_many :restaurants, through: :restaurant_reviews
  belongs_to :author

  validates :title, presence: true 
  validates :content, presence: true 
  validates :author_id, presence: true 
end
