require 'rails_helper'

RSpec.describe 'Api::V1::Authors', type: :request do
  describe 'POST /api/v1/authors' do
    let(:valid_params) do
      '{ "data": { "type":"authors", "attributes": { "first-name": "Test1", "last-name": "user2" } } }'
    end

    it 'create author record' do
      headers = { 'Content-Type' => 'application/vnd.api+json' }

      post '/api/v1/authors',
           params: valid_params, headers: headers
      expect(response.content_type).to eq('application/vnd.api+json')
      expect(response).to have_http_status(:created)
    end
  end
end
