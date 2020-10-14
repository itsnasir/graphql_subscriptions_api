module Types
  class SubscriptionType < Types::BaseObject
    field :new_streaming_link, Types::LiveStreamingType, null: false, description: 'A new Live streaming link'

    def new_streaming_link; end
  end
end
