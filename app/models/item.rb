class Item < ApplicationRecord
  belongs_to :user
  enum item_type: %i[taco drink side]

  def upcase_item_type
    item_type.upcase if item_type.present?
  end
end
