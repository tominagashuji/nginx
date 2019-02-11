module Types
  class BlogType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :content, String, null: false
  end
end
