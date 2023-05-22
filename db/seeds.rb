# frozen_string_literal: true

puts "Destroying books..."
Book.destroy_all

puts "Creating books..."

book1 = Book.new(
  author_name: "J.K. Rowling",
  title: "Harry Potter",
  description: "Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry. ",
  rating: 5,
  word_count: 76_944
)
book1.save

book2 = Book.new(
  author_name: "F. Scott Fitzgerald",
  title: "The Great Gatsby",
  description: "Set in the Jazz Age on Long Island, near New York City, the novel depicts first-person narrator Nick Carraway's interactions with mysterious millionaire Jay Gatsby and Gatsby's obsession to reunite with his former lover, Daisy Buchanan.",
  rating: 3,
  word_count: 47_094
)

book2.save

book3 = Book.new(
  author_name: "Herman Melville",
  title: "Moby-Dick",
  description: "Moby-Dick; or, The Whale is an 1851 novel by American writer Herman Melville. The book is the sailor Ishmael's narrative of the maniacal quest of Ahab, captain of the whaling ship Pequod, for vengeance against Moby Dick, the giant white sperm whale that crippled him on the ship's previous voyage",
  rating: 4,
  word_count: 209_117
)
book3.save

book4 = Book.new(
  author_name: "James Joyce",
  title: "Ulysses",
  description: "Ulysses chronicles the passage of Leopold Bloom through Dublin during an ordinary day, June 16, 1904.",
  rating: 2,
  word_count: 265_000
)
book4.save

book5 = Book.new(
  author_name: "Miguel de Cervantes",
  title: "Don Quixote",
  description: "The plot revolves around the adventures of a member of the lowest nobility, an hidalgo from La Mancha named Alonso Quijano, who reads so many chivalric romances that he either loses or pretends to have lost his mind in order to become a knight-errant (caballero andante) to revive chivalry and serve his nation, under the name Don Quixote de la Mancha.",
  rating: 3,
  word_count: 345_390
)
book5.save

book6 = Book.new(
  author_name: "Leo Tolstoy",
  title: "War and Peace",
  description: "Epic in scale, War and Peace delineates in graphic detail events leading up to Napoleon's invasion of Russia, and the impact of the Napoleonic era on Tsarist society, as seen through the eyes of...",
  rating: 4,
  word_count: 587_287
)
book6.save

book7 = Book.new(
  author_name: "Fyodor Dostoyevsky",
  title: "Crime and Punishment",
  description: "It is a murder story, told from a murder;s point of view, that implicates even the most innocent reader in its enormities. It is a cat-and-mouse game between a tormented young killer and a cheerful...",
  rating: 4,
  word_count: 208_016
)
book7.save

book8 = Book.new(
  author_name: "J. D. Salinger",
  title: "The Catcher in the Rye",
  description: "The Catcher in the Rye is a 1945 novel by J. D. Salinger. Originally published for adults, the novel has become a common part of high school and college curricula throughout the English-speaking...",
  rating: 3,
  word_count: 73_404
)
book8.save

book9 = Book.new(
  author_name: "Lewis Carroll",
  title: "Alice's Adventures in Wonderland",
  description: "In 1862 Charles Lutwidge Dodgson, a shy Oxford mathematician with a stammer, created a story about a little girl tumbling down a rabbit hole.",
  rating: 2,
  word_count: 15_500
)
book9.save

book10 = Book.new(
  author_name: "George Orwell",
  title: "Nineteen Eighty Four",
  description: "The story follows the life of one seemingly insignificant man, Winston Smith, a civil servant assigned the task of perpetuating the regime's propaganda by falsifying records and political literature...",
  rating: 5,
  word_count: 89_000
)
book10.save

puts "Finished!"
