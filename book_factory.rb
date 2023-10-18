module BookFactory
  def create_book_from_data(book_data)
    Book.new(
      book_data['title'],
      book_data['author']
    )
  end

  def save_books
    books_data = books_manager.books.map do |book|
      { title: book.title, author: book.author }
    end

    serialize_to_json(books_data, 'books.json')
  end

  def load_books
    books_data = deserialize_from_json('books.json')
    books_data.each do |book_data|
      books_manager.books << create_book_from_data(book_data)
    end
  end
end
