puts 'Creating books...'

book1 = Book.new(
  author_name: 'J.K. Rowling',
  title: 'Harry Potter',
  description: 'Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry. '
)
book1.save

book2 = Book.new(
  author_name: 'F. Scott Fitzgerald',
  title: 'Great Gatsby',
  description: "Set in the Jazz Age on Long Island, near New York City, the novel depicts first-person narrator Nick Carraway's interactions with mysterious millionaire Jay Gatsby and Gatsby's obsession to reunite with his former lover, Daisy Buchanan."
)
book2.save

book3 = Book.new(
  author_name: 'Herman Melville',
  title: 'Moby-Dick',
  description: "Moby-Dick; or, The Whale is an 1851 novel by American writer Herman Melville. The book is the sailor Ishmael's narrative of the maniacal quest of Ahab, captain of the whaling ship Pequod, for vengeance against Moby Dick, the giant white sperm whale that crippled him on the ship's previous voyage"
)
book3.save

puts 'Finished!'
