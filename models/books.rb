class Book
# Do a book class
  attr_accessor(:id, :title, :book_body, :genre)

  def self.open_connection
    conn = PG.connect(dbname: "books")
  end

  def self.find(id)
    conn = self.open_connection
    sql = "SELECT * FROM book WHERE id = #{id} LIMIT 1"
    books_result = conn.exec(sql)
    book = self.hydrate(books_result[0])
  end
