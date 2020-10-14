module Resolvers
  module LiveStreamings
    class All < Base
      type [Types::LiveStreamingType], null: false

      def resolve
        LiveStreaming.all
      end
    end
  end
end
