class Subscriptions::NewLiveStreamingStarted < Subscriptions::BaseSubscription
  field :new_live_streaming, Types::LiveStreamingType, null: true
end