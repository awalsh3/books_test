module Api
  module V1
    class BooksController < ApplicationController
      def index
        books = Book.all

        # Create an array to hold the serialized book data
        serialized_books = []

        # Iterate over each book record and format the data as a JSON API resource object
        books.each do |book|
          serialized_books << {
            type: "books",
            id: book.id.to_s,
            attributes: {
              author_name: book.author_name,
              title: book.title,
              description: book.description,
              created_at: book.created_at.iso8601,
              updated_at: book.updated_at.iso8601,
              rating: book.rating,
              word_count: book.word_count
            }
          }
        end

        # Format the response as a JSON API document
        response = {
          data: serialized_books,
          meta: {
            status: "SUCCESS",
            message: "Loaded books"
          }
        }

        # Render the response as JSON
        render json: response.to_json
      end
    end
  end
end
