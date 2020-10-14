class LiveStreaming < ApplicationRecord
  def notify_subscriber_of_addition
    GraphqlSubscriptionsSchema.subscriptions.trigger('newStreamingLink', {}, self)
  end
end
