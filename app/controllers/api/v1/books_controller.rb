# frozen_string_literal: true

module Api
  module V1
    # This is a book class that handles book-specific logic.
    class BooksController < ApplicationController
      def index
        render json: serialized_books
      rescue StandardError
        render json: {}, status: :internal_server_error
      end

      private

      def serialized_books
        books.empty? ? no_books_response : BookSerializer.serialize(books)
      end

      def books
        Book.all
      end

      def no_books_response
        {
          data: [],
          meta: {
            status: 'SUCCESS',
            message: 'No books found'
          }
        }
      end
    end
  end
end
