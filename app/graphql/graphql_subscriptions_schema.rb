class GraphqlSubscriptionsSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
  subscription(Types::SubscriptionType)

  use GraphQL::Execution::Interpreter
  use GraphQL::Pagination::Connections
  use GraphQL::Analysis::AST
  use GraphQL::Subscriptions::ActionCableSubscriptions, redis: Redis.new
end
