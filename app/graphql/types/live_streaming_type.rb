module Types
  class LiveStreamingType < Types::BaseObject
    field :id,                Integer, null: false
    field :url,               String,  null: false
    field :subscribers_count, Integer, null: true

    def subscribers_count
      SubscribersTracker.current_subscribers_count('new_live_streaming')
    end
  end
end
