class Subscriptions::NewLiveStreamingStarted < Subscriptions::BaseSubscription
  field :new_live_streaming, Types::LiveStreamingType, null: true

  def new_live_streaming
    object
  end
end
