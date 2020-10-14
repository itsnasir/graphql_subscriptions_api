module Types
  class QueryType < Types::BaseObject
    include QueryFields::LiveStreaming
  end
end
