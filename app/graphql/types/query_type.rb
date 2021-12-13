module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :items,
          [Types::ItemType],
          null: false,
          description: 'Return a list of items'

    def items
      Item.all
    end
    field :users,
          [Types::UserType],
          null: false,
          description: 'Return a list of users'

    def users
      User.all
    end
  end
end
