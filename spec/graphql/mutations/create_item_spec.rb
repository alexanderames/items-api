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
              itemType
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
          variables: { input: { name: 'slice of pizza', itemType: 'SIDE', userId: user.id } }
        )

        expect(result['data']['createItem']['item']['name']).to eq('slice of pizza')
        expect(result['data']['createItem']['item']['itemType']).to eq('SIDE')
      end
    end
  end
end
