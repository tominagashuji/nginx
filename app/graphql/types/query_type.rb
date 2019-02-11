module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :blog, BlogType, null: true do
      description '店舗をidで検索'
      argument :id, ID,required: true
      # argument :id, ID, :name, String, :content, String, required: true
    end

    def blog(id:)
      Blog.find(id)
    end
  end
end
