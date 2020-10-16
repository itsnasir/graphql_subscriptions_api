class Subscriptions::NewCommentPosted < Subscriptions::BaseSubscription
  argument :live_streaming_id, ID, required: true, loads: Types::LiveStreamingType

  field :new_comment, Types::CommentType, null: true
end
