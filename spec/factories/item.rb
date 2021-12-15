FactoryBot.define do
  factory :item, class: Item do
    name { Faker::Quote.famous_last_words }
    user
  end
end
