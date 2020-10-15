class Subscriptions::NewLiveStreamingStarted < Subscriptions::BaseSubscription
  field :live_streaming, Types::LiveStreamingType, null: true
end
