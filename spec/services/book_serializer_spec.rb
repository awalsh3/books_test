# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BookSerializer, type: :model do
  context 'serialization of book' do
    let(:book1) do
      Book.create(
        author_name: 'Michael Bond',
        title: 'Paddington Bear',
        description: 'The adventures of a small toy bear, Paddington after the train station.',
        rating: 5,
        word_count: 500
      )
    end
    let(:book2) do
      Book.create(
        author_name: 'A. A. Milne',
        title: 'Winnie the Pooh',
        description: 'A a good-natured, yellow-furred, honey-loving bear.',
        rating: 4,
        word_count: 600
      )
    end

    let(:books) { [book1, book2] }

    it 'returns serialized books' do
      serialized_result = BookSerializer.serialize(books)
      puts "Here is the class: #{serialized_result.class}"
      expect(serialized_result).to eq({
                                        data: [
                                          {
                                            type: 'books',
                                            id: '1',
                                            attributes: {
                                              author_name: book1.author_name,
                                              title: book1.title,
                                              description: book1.description,
                                              rating: book1.rating,
                                              word_count: book1.word_count
                                            }
                                          },
                                          {
                                            type: 'books',
                                            id: '2',
                                            attributes: {
                                              author_name: book2.author_name,
                                              title: book2.title,
                                              description: book2.description,
                                              rating: book2.rating,
                                              word_count: book2.word_count
                                            }
                                          }
                                        ],
                                        meta: {
                                          status: 'SUCCESS',
                                          message: 'Loaded books'
                                        }
                                      })
    end
  end
end
