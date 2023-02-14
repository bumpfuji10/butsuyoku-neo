module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :user, UserType, 'ユーザーをIDで取得' do
      argument :id, ID
    end

    def user(id:)
      User.find(id)
    end
  end
end
