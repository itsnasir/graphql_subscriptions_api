module Types
  class SubscriptionType < Types::BaseObject
    extend GraphQL::Subscriptions::SubscriptionRoot

    field :new_streaming_link, subscription: Subscriptions::NewLiveStreamingStarted
    field :new_comment_posted, subscription: Subscriptions::NewCommentPosted
  end
end
