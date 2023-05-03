require 'rails_helper'

RSpec.describe 'API V1 Books', type: :request do
  describe "GET '/api/v1/books'" do
    it 'returns http success' do
      get api_v1_books_path
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
    end
  end
end
