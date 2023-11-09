# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'API V1 Books', type: :request do
  let(:json) { JSON.parse(response.body).deep_symbolize_keys }

  context "GET '/api/v1/books'" do
    let!(:book) { create(:book) }

    it 'returns http success' do
      get api_v1_books_path
      expect(response).to have_http_status(:success)
    end
  end

  context 'No books' do
    it 'returns an empty arrays when there are no books' do
      Book.destroy_all
      get api_v1_books_path
      expect(json[:data]).to be_empty
    end
  end

  context 'Failure' do
    let!(:book) { create(:book) } # Ensuring that at least one book exists.

    before do
      allow(BookSerializer).to receive(:call).and_raise(StandardError)
    end

    it 'it returns a 500 error' do
      get api_v1_books_path
      expect(response.status).to eq(500)
    end
  end
end
