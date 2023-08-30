# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'API V1 Books', type: :request do
  before do
    get api_v1_books_path
  end
  let(:json) { JSON.parse(response.body).deep_symbolize_keys }

  context "GET '/api/v1/books'" do
    let!(:book) { create(:book) }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end

  context 'No books' do
    it 'returns an empty array when there are no books' do
      Book.destroy_all
      expect(json[:data]).to be_empty
    end
  end

  context 'Failure' do
    before do
      allow(BookSerializer).to receive(:serialize).and_raise(StandardError)
    end
    it 'it returns a 500 error' do
      expect(response.status).to eq(500)
    end
  end
end
