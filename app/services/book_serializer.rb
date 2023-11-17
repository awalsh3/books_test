# frozen_string_literal: true

# This is a serialization service class that handles serializing books.
class BookSerializer
  # The main method to serialize the books
  def self.call(books)
    new(books).call
  end

  def initialize(books)
    @books = books
  end

  def call
    serialize(books)
  end

  private

  attr_reader :books

  def serialize(books)
    books = Array(books)
    return if books.empty?

    {
      data: serialize_books(books),
      meta: {
        status: 'SUCCESS',
        message: 'Loaded books'
      }
    }
  end

  def serialize_books(books)
    books.map { |book| serialize_book(book) }
  end

  def serialize_book(book)
    {
      type: 'books',
      id: book.id.to_s,
      attributes: serialize_attributes(book)
    }
  end

  def serialize_attributes(book)
    {
      author_name: book.author_name,
      title: book.title,
      description: book.description,
      rating: book.rating,
      word_count: book.word_count
    }
  end
end
