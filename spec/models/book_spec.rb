# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'validity of Book' do
    let!(:book1) do
      create(:book, author_name: author_name, title: title)
    end

    let(:book2) do
      build(:book, author_name: author_name, title: title)
    end

    let(:author_name) { 'Kathleen Walsh' }
    let(:title) { 'A memoir' }

    it 'is valid with valid attributes' do
      expect(book1).to be_valid
    end

    it 'is not valid without a unique title' do
      expect(book2).to_not be_valid
    end

    context 'rating not between 1-5' do
      let(:book) { build(:book, author_name: author_name, title: title, rating: 8) }

      it 'is invalid without a star rating between 1-5' do
        expect(book).to_not be_valid
      end
    end
  end
end
