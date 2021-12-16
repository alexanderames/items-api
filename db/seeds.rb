user = User.create!(
  email: 'thecreator@gmailz.com', name: 'Tyler Baudelaire'
)

Item.create!(
  name: 'slice of pizza',
  item_type: :side,
  user_id: user.id
)
