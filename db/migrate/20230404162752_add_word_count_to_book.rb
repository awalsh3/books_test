# frozen_string_literal: true

class AddWordCountToBook < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    add_column :books, :word_count, :integer
  end
end
