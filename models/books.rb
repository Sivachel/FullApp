class Book
# Do a book class
  attr_accessor(:id, :title, :book_body, :genre)

  def self.open_connection
    # connect to database
    conn = PG.connect(dbname: "books")
  end

  def save
    conn = Book.open_connection
    if (!self.id)
      sql = "INSERT INTO book (title, book_body, genre) VALUES ('#{self.title}', '#{self.book_body}', '#{self.genre}')"
    else
      sql = "UPDATE book SET title='#{self.title}', book_body='#{self.post_body}', genre='#{self.genre}' WHERE id = #{self.id}"
    end
    conn.exec(sql)
  end

  def self.all
    conn = self.open_connection
    sql = "SELECT id, title, book_body, genre FROM book ORDER BY id"
    result = conn.exec(sql)
    books = result.map do |result|
      self.hydrate(result)
  end
    books
  end

  def self.find(id)
    conn = self.open_connection
    sql = "SELECT * FROM book WHERE id = #{id} LIMIT 1"
    books_result = conn.exec(sql)
    book = self.hydrate(books_result[0])
  end

  def self.destroy(id)
    conn = self.open_connection
    sql = "DELETE FROM book WHERE id = #{id}"
    conn.exec(sql)
  end

  def self.hydrate(book_data)
    book = Book.new
    book.id = book_data['id']
    book.title = book_data['title']
    book.book_body = book_data['book_body']
    book.genre = book_data['genre']
  end


end
# end of class Book
