class Book < ApplicationRecord
  validates :author_name, :rating, :word_count, presence: true
  validates :title, uniqueness: true
  validates :rating, length: { in: 1..5 }
end
