module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
  end
end
