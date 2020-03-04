class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :date, :author_id

  has_many :restaurants
  belongs_to :author
end
