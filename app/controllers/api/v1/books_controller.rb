module Api
  module V1
    class BooksController < ApplicationController
      def index
        raise StandardError, "Unable to serialize books" if serialized_books.nil?

        render json: serialized_books
      end

      private
        def serialized_books
          if books.empty?
            {
              data: [],
              meta: {
                status: "SUCCESS",
                message: "No books found"
              }
            }
          else
            BookSerializer.serialize(books) # returns a json formatted string, as that is what serialization is in this context.
          end
        end

        def books
          Book.all
        end
    end
  end
end
