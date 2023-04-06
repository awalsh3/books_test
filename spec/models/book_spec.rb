require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'validity of Book' do
    it 'is valid with valid attributes' do
      book = Book.create(
        author_name: 'Annie Walsh',
        title: 'A memoir',
        description: 'The amazing life story',
        rating: 5,
        word_count: 100_000
      )
      expect(book).to be_valid
    end

    it 'is not valid without a unique title' do
      book = Book.create(
        author_name: 'Annie Walsh',
        title: 'A memoir',
        description: 'The amazing life story',
        rating: 5,
        word_count: 100_000
      )
      book1 = Book.new(
        author_name: 'Annie Walsh',
        title: 'A memoir',
        description: 'The amazing life story',
        rating: 5,
        word_count: 100_000
      )
      expect(book1).to_not be_valid
    end

    it 'is not valid without a star rating between 1-5' do
      book2 = Book.new(rating: 8)
      expect(book2).to_not be_valid
    end
  end
end
