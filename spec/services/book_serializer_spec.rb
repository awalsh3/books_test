# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BookSerializer, type: :model do
  let(:book1) do
    create(:book, author_name: 'Michael Bond', title: 'Paddington Bear',
                  description: 'The adventures of a small toy bear, Paddington after the train station.')
  end
  let(:book2) do
    create(:book, author_name: 'A. A. Milne', title: 'Winnie the Pooh',
                  description: 'A a good-natured, yellow-furred, honey-loving bear.', rating: 4, word_count: 600)
  end

  let(:serialized_format) do
    {
      data: [book_data(book1, '1'), book_data(book2, '2')],
      meta: {
        status: 'SUCCESS',
        message: 'Loaded books'
      }
    }
  end

  context 'serialization of book' do
    let(:books) { [book1, book2] }

    it 'returns serialized books' do
      serialized_result = BookSerializer.serialize(books)
      expect(serialized_result).to eq(serialized_format)
    end
  end
end

def book_data(book, id)
  {
    type: 'books',
    id: id,
    attributes: book_attributes(book)
  }
end

def book_attributes(book)
  {
    author_name: book.author_name,
    title: book.title,
    description: book.description,
    rating: book.rating,
    word_count: book.word_count
  }
end
