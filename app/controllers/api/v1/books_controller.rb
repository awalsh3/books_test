# frozen_string_literal: true

module Api
  module V1
    # This is a book class that handles book-specific logic.
    class BooksController < ApplicationController
      def index
        render json: serialized_books
      end

      private

      def serialized_books # rubocop:todo Metrics/MethodLength
        if books.empty?
          {
            data: [],
            meta: {
              status: 'SUCCESS',
              message: 'No books found'
            }
          }
        else
          BookSerializer.serialize(books)
        end
      end

      def books
        Book.all
      end
    end
  end
end
