class Book < ApplicationRecord
  validates :author_name, presence: true
  validates :title, uniqueness: true
end
