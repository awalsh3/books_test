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
  end
end
