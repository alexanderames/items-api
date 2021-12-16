class AddItemTypeToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :item_type, :integer
  end
end
