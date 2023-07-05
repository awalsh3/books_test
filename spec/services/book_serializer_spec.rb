require "rails_helper"

RSpec.describe BookSerializer, type: :model do
  context 'serialization of book' do
     let!(:book1) do
      Book.create(
        author_name: author_name,
        title: title,
        description: description,
        rating: rating,
        word_count: word_count
      )
      end
     let(:author_name) { "Kathleen Walsh" }
     let(:title) { "A memoir" }
     let(:description) { "The new and improved life story" }
     let(:word_count) { 250_000 }
     let(:rating) { 4 }

     it "does something" do
      BookSerializer.serialize(book1)
      expect(book1).to be_valid
    end
   end
end
