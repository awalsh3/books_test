# frozen_string_literal: true

Rails.logger.debug 'Destroying books...'
Book.destroy_all

Rails.logger.debug 'Creating books...'

book1 = Book.new(
  author_name: 'J.K. Rowling',
  title: 'Harry Potter',
  description: 'The novels chronicle the lives of a young wizard, Harry Potter, and his friends.',
  rating: 5,
  word_count: 76_944
)
book1.save

book2 = Book.new(
  author_name: 'F. Scott Fitzgerald',
  title: 'The Great Gatsby',
  description: "The novel depicts Nick Carraway's interactions with mysterious millionaire Jay Gatsby.",
  rating: 3,
  word_count: 47_094
)

book2.save

book3 = Book.new(
  author_name: 'Herman Melville',
  title: 'Moby-Dick',
  description: "The sailor Ishmael's narrative of the maniacal quest of Ahab, captain of the whaling ship Pequod.",
  rating: 4,
  word_count: 209_117
)
book3.save

book4 = Book.new(
  author_name: 'James Joyce',
  title: 'Ulysses',
  description: 'Ulysses chronicles the passage of Leopold Bloom through Dublin during an ordinary day, June 16, 1904.',
  rating: 2,
  word_count: 265_000
)
book4.save

book5 = Book.new(
  author_name: 'Miguel de Cervantes',
  title: 'Don Quixote',
  description: 'The plot revolves around the adventures of a member of the lowest nobility, an hidalgo from La Mancha.',
  rating: 3,
  word_count: 345_390
)
book5.save

book6 = Book.new(
  author_name: 'Leo Tolstoy',
  title: 'War and Peace',
  description: "War and Peace delineates in graphic detail events leading up to Napoleon's invasion of Russia.",
  rating: 4,
  word_count: 587_287
)
book6.save

book7 = Book.new(
  author_name: 'Fyodor Dostoyevsky',
  title: 'Crime and Punishment',
  description: 'It is a cat-and-mouse game between a tormented young killer and a cheerful...',
  rating: 4,
  word_count: 208_016
)
book7.save

book8 = Book.new(
  author_name: 'J. D. Salinger',
  title: 'The Catcher in the Rye',
  description: 'A mysterious boy.',
  rating: 3,
  word_count: 73_404
)
book8.save

book9 = Book.new(
  author_name: 'Lewis Carroll',
  title: "Alice's Adventures in Wonderland",
  description: 'A story about a little girl tumbling down a rabbit hole.',
  rating: 2,
  word_count: 15_500
)
book9.save

book10 = Book.new(
  author_name: 'George Orwell',
  title: 'Nineteen Eighty Four',
  description: "A civil servant assigned the task of perpetuating the regime's propaganda by falsifying records.",
  rating: 5,
  word_count: 89_000
)
book10.save

Rails.logger.debug 'Finished!'
