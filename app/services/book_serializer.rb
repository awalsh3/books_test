# frozen_string_literal: true

# This is a serialization service class that handles serializing books.
class BookSerializer
  # The main method to serialize the books
  def self.serialize(books)
    return unless books.any?

    {
      data: serialize_books(books),
      meta: {
        status: 'SUCCESS',
        message: 'Loaded books'
      }
    }
  end

  def self.serialize_books(books)
    books.map { |book| serialize_book(book) }
  end

  def self.serialize_book(book)
    {
      type: 'books',
      id: book.id.to_s,
      attributes: serialize_attributes(book)
    }
  end

  def self.serialize_attributes(book)
    {
      author_name: book.author_name,
      title: book.title,
      description: book.description,
      rating: book.rating,
      word_count: book.word_count
    }
  end
end
