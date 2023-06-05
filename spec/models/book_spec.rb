require "rails_helper"

RSpec.describe Book, type: :model do
  context 'validity of Book' do
    let!(:book1) do
      Book.create(
        author_name: author_name,
        title: title,
        description: description,
        rating: rating,
        word_count: word_count
      )
    end
    let(:book2) do
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

    it "is valid with valid attributes" do
      expect(book1).to be_valid
    end

    it 'is not valid without a unique title' do
      expect(book2).to_not be_valid
    end

    context "rating not between 1-5" do
      let(:rating) { 8 }
      it "is invalid without a star rating between 1-5" do
        expect(book1).to_not be_valid
      end
    end
  end
end
