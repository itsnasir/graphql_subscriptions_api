module Types
  class CommentType < Types::BaseObject
    field :id,      Integer, null: false
    field :content, String,  null: false
  end
end
