Rails.application.routes.draw do
  unless Rails.env.production?
    post '/graphql_dev', to: 'api/v1/graphql#execute_dev'
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql_dev'
  end

  post 'api/v1/graphql', to: 'api/v1/graphql#execute'
end
