module Types
  module QueryFields
    module LiveStreaming
      extend ActiveSupport::Concern

      included do
        field(
          :live_streamings,
          resolver: Resolvers::LiveStreamings::All
        )
      end
    end
  end
end
