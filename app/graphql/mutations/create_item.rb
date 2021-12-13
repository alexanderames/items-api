module Mutations
  class CreateItem < ::Mutations::BaseMutation
    description "Create a new item"
    # arguments passed to the `resolve` method
    argument :name, String, required: true
    argument :user_id, Integer, required: true
    # fields to return after mutation is executed
    field :item, Types::ItemType, null: false
    field :errors, [String], null: false

    def resolve(user_id:, name:)
      item = Item.new(name: name, user_id: user_id)
      if item.save!
        {
          item: item,
          errors: []
        }
      else
        {
          item: nil,
          errors: item.errors.full_messages
        }
      end
    end
  end
end
