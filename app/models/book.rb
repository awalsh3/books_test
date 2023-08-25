# frozen_string_literal: true

class Book < ApplicationRecord # rubocop:todo Style/Documentation
  validates :author_name, :rating, :word_count, presence: true
  validates :title, uniqueness: true # rubocop:todo Rails/UniqueValidationWithoutIndex
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
