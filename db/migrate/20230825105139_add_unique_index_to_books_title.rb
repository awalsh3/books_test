# frozen_string_literal: true

# rubocop Style/Documentation
class AddUniqueIndexToBooksTitle < ActiveRecord::Migration[7.0]
  def change
    add_index :books, :title, unique: true
  end
end
