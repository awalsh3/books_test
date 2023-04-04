puts 'Creating books...'

book1 = Book.new(author_name: 'J.K. Rowling', title: 'Harry Potter', description: 'magic')
book1.save

book2 = Book.new(author_name: 'Fitzgerald', title: 'Great Gatsby', description: 'party')
book2.save

book3 = Book.new(author_name: 'Annie Walsh', title: 'My life', description: 'a memoir')
book3.save

puts 'Finished!'
