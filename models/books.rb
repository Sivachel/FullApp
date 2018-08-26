class Book
# Do a book class
  attr_accessor(:id, :title, :book_body, :genre)

  def self.open_connection
    # connect to database
    conn = PG.connect(dbname: "books")
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
