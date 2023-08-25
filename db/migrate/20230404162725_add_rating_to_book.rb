# frozen_string_literal: true

# rubocop Style/Documentation
class AddRatingToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :rating, :integer
  end
end
