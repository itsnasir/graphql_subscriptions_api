class Comment < ApplicationRecord
  after_commit :notify_subscriber_of_addition, on: :create

  def notify_subscriber_of_addition
    GraphqlSubscriptionsSchema.subscriptions.trigger('newCommentPosted', { live_streaming_id: live_streaming_id }, self)
  end

  def new_comment
    {
      id: id,
      content: content,
      live_streaming_id: live_streaming_id
    }
  end
end
