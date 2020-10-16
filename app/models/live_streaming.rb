class LiveStreaming < ApplicationRecord
  after_commit :notify_subscriber_of_addition

  def notify_subscriber_of_addition
    GraphqlSubscriptionsSchema.subscriptions.trigger('newStreamingLink', {}, self)
  end
end
