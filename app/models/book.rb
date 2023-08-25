# frozen_string_literal: true

# This is a book class that handles book logic.
class Book < ApplicationRecord
  validates :author_name, :rating, :word_count, presence: true
  validates :title, uniqueness: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
