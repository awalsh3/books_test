# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    author_name { 'Default Author' }
    title { 'Default Title' }
    description { 'Default Description' }
    rating { 5 }
    word_count { 500 }
  end
end
