require 'rails_helper'

RSpec.describe 'API V1 Books', type: :request do
  context "GET '/api/v1/books'" do
    let(:json) { JSON.parse(response.body).deep_symbolize_keys }
    it 'returns http success' do
      get api_v1_books_path
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
      expect(json).to eq({
        data: [],
        meta: {
          message: 'Loaded books',
          status: 'SUCCESS'
        }
      })
    end
  end
end
