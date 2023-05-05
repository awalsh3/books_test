require 'rails_helper'

RSpec.describe 'API V1 Books', type: :request do
  context "GET '/api/v1/books'" do
    let(:json) { JSON.parse(response.body).deep_symbolize_keys }

    it 'returns http success' do
      book = Book.create(
        title: 'The Hobbit',
        author_name: 'J.R.R. Tolkien',
        description: 'the unforgettable story of Bilbo, a peace-loving hobbit, who embarks on a strange and magical adventure. A timeless classic.',
        word_count: 560_890,
        rating: 2
      )
      get api_v1_books_path
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
      expect(json[:data].size).to eq(1)
      expect(json[:data][0][:attributes][:title]).to eq('The Hobbit')
      expect(json[:data][0][:attributes][:author_name]).to eq('J.R.R. Tolkien')
      expect(json[:meta]).to eq({
        message: 'Loaded books',
        status: 'SUCCESS'
      })
    end
  end
end
