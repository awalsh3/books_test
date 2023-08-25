# frozen_string_literal: true

# rubocop:todo Style/Documentation
class Book < ApplicationRecord
  validates :author_name, :rating, :word_count, presence: true
  validates :title, uniqueness: true # rubocop:todo Rails/UniqueValidationWithoutIndex
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
