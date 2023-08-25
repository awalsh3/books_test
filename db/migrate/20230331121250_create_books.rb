# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    create_table :books do |t|
      t.string :author_name
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
