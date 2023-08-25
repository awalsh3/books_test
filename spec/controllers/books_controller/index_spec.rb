# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'API V1 Books', type: :request do
  let(:json) { JSON.parse(response.body).deep_symbolize_keys }
  context "GET '/api/v1/books'" do
    let!(:book) { create(:book) }
    let!(:new_book) { create(:book, author_name: 'George R.R. Martin', title: 'Game of Thrones') }

    it 'returns http success' do
      get api_v1_books_path
      expect(response).to have_http_status(:success)
    end

    it 'returns all books in the response' do
      get api_v1_books_path
      expect(json[:data].size).to eq(2)
    end
  end

  context 'No books' do
    before do
      Book.destroy_all
    end
    it 'returns an empty array when there are no books' do
      get api_v1_books_path
      expect(json[:data]).to be_empty
    end
  end

  context 'Failure' do
    before do
      allow(BookSerializer).to receive(:serialize).and_raise(StandardError)
    end
    it 'it returns a 500 error' do
      get api_v1_books_path
      expect(response.status).to eq(500)
    end
  end
end
