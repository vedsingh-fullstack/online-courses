require 'rails_helper'

RSpec.describe 'Api::V1::Courses', type: :request do
  describe 'POST /api/v1/courses' do
    let(:author) { create(:author) }
    let(:valid_author_relationship) do
    end
    let(:valid_params) do
      '{ "data": { "type":"courses", "attributes": { "title": "Test1", "description": "user2", "released-on": "12-12-2014" }, "relationships": {"author": {"data": {"type": "authors","id": ' + author.id.to_s + '}}} } }'
    end

    it 'create author record' do
      headers = { 'Content-Type' => 'application/vnd.api+json' }

      post '/api/v1/courses',
           params: valid_params, headers: headers

      expect(response.content_type).to eq('application/vnd.api+json')
      expect(response).to have_http_status(:created)
    end
  end
end
