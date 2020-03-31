module Types
  class ReviewType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :content, String, null: false
    field :content, String, null: false
    field :date, String, null: false
    field :author_id, ID, null: false
  end
end
