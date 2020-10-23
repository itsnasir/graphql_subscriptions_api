class Subscriptions::NewLiveStreamingStarted < Subscriptions::BaseSubscription
  field :new_live_streaming, Types::LiveStreamingType, null: true

  def subscribe
    subscribers_tracker.subscribe
  end

  def unsubscribe
    subscribers_tracker.unsubscribe
  end

  private

  def subscribers_tracker
    ::SubscribersTracker.new('new_live_streaming')
  end
end
