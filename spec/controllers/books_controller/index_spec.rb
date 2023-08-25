# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'API V1 Books', type: :request do
  context "GET '/api/v1/books'" do
    let(:json) { JSON.parse(response.body).deep_symbolize_keys }
    let!(:book) do
      Book.create(
        author_name: author_name,
        title: title,
        description: description,
        rating: rating,
        word_count: word_count
      )
    end
    let(:author_name) { 'J.R.R. Tolkien' }
    let(:title) { 'The Hobbit' }
    let(:description) do
      'A peace-loving hobbit, who embarks on a strange and magical adventure.'
    end
    let(:word_count) { 250_000 }
    let(:rating) { 4 }

    it 'returns http success' do
      get api_v1_books_path
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
      expect(json[:data].size).to eq(1)
      expect(json[:meta]).to eq({
                                  message: 'Loaded books',
                                  status: 'SUCCESS'
                                })
    end

    it 'returns an empty array when there are no books' do
      Book.destroy_all
      get api_v1_books_path
      expect(json[:data]).to be_empty
    end

    it 'returns all books in the response' do
      Book.create(
        author_name: 'George R.R. Martin',
        title: 'A Game of Thrones',
        description: 'Fight to the death of mupltiple families hungry for power',
        rating: 5,
        word_count: 600_000
      )
      get api_v1_books_path
      expect(json[:data].size).to eq(2)
    end
  end
end
