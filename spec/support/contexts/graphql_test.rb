RSpec.shared_context 'GraphQL test' do
  let(:user)       {}
  let(:session_id) {}
  let(:context)    { {} }
  let(:variables)  { {} }
  let(:response) do
    Schema.execute(query, context: context, variables: variables).deep_symbolize_keys
  end
end
