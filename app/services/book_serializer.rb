# frozen_string_literal: true

# This is a serialization service class that handles serializing books.
class BookSerializer
  def self.serialize(books) # rubocop:todo Metrics/MethodLength
    serialized_books = []
    return if books.count < 1

    books.each do |book|
      serialized_books << {
        type: 'books',
        id: book.id.to_s,
        attributes: {
          author_name: book.author_name,
          title: book.title,
          description: book.description,
          rating: book.rating,
          word_count: book.word_count
        }
      }
    end
    {
      data: serialized_books,
      meta: {
        status: 'SUCCESS',
        message: 'Loaded books'
      }
    }
  end
end
