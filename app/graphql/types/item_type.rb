module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :item_type, ItemTypeEnum, null: true, method: :upcase_item_type
  end
end
