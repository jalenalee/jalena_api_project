class Restaurant < ApplicationRecord
  has_one :address
  has_many :restaurant_reviews
  has_many :reviews, through: :restaurant_reviews
  belongs_to :owner

  validates :address, presence: true 
end 
