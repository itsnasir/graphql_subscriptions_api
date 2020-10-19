class LiveStreaming < ApplicationRecord
  after_commit :notify_subscriber_of_addition, on: :create

  def notify_subscriber_of_addition
    GraphqlSubscriptionsSchema.subscriptions.trigger('newStreamingLink', {}, self)
  end

  def new_live_streaming
    {
      id: id,
      url: url
    }
  end
end
