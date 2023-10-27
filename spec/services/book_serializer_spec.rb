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

  let(:expected_serialized_result) do
    {
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
      )
    }
  end

  let(:meta_result) do
    {
      meta:
        a_hash_including(
          status: be_an_instance_of(String),
          message: be_an_instance_of(String)
        )
    }
  end

  context 'serialization of book' do
    let(:books) { [book1, book2] }
    subject(:serialized_result) { BookSerializer.serialize(books) }

    it 'returns serialized books with correct structure' do
      expect(serialized_result).to include(expected_serialized_result)
    end

    it 'returns serialized books with correct meta message' do
      expect(serialized_result).to include(meta_result)
    end
  end
end
