module Types
  class SubscriptionType < Types::BaseObject
    field :new_streaming_link, Types::LiveStreamingType, null: false
    def new_streaming_link
      object
    end
  end
end
