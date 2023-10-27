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

  context 'serialization of book' do
    let(:books) { [book1, book2] }

    it 'returns serialized books with correct structure' do
      serialized_result = BookSerializer.serialize(books)

      expect(serialized_result).to include(
        data: array_including(
          a_hash_including(
            type: 'books',
            id: be_an_instance_of(String),
            attributes: a_hash_including(
              author_name: be_an_instance_of(String),
              title: be_an_instance_of(String),
              description: be_an_instance_of(String),
              rating: be_an_instance_of(Integer).or(be_nil),
              word_count: be_an_instance_of(Integer).or(be_nil)
            )
          )
        ),
        meta: a_hash_including(
          status: 'SUCCESS',
          message: 'Loaded books'
        )
      )
    end
  end
end
