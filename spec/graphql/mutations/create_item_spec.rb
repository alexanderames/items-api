require 'rails_helper'

module Mutations
  RSpec.describe CreateItem, type: :request do
    let(:mutation) do
      <<~GQL
        mutation createItem($input: CreateItemInput!) {
        	createItem(input: $input) {
        		item {
        			id
        			name
        		}
        	}
        }
      GQL
    end
    describe '.resolve' do
      it 'creates an item' do
        user = create(:user)

        result = ItemsApiSchema.execute(
          mutation,
          variables: { input: { name: 'See you again', userId: user.id } }
        )

        expect(result['data']['createItem']['item']['name']).to eq('See you again')
      end
    end
  end
end
