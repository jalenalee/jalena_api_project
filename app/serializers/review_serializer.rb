class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :date, :author_id

  has_many :restaurant_reviews
  has_many :restaurant, through: :restaurant_reviews
  belongs_to :author
end
