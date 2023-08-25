# frozen_string_literal: true

class AddWordCountToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :word_count, :integer
  end
end
