module Types
  class LiveStreamingType < Types::BaseObject
    field :id,  Integer, null: false
    field :url, String,  null: false
  end
end
