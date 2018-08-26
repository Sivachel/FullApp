class Book
# Do a book class
  attr_accessor(:id, :title, :book_body, :genre)

  def self.open_connection
    conn = PG.connect(dbname: "books")
  end

    
