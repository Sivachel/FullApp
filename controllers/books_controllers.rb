class BooksController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, 'views') }

  configure :development do
    register Sinatra::Reloader
  end

  $books = [{
    id:0,
    title: 'Book 0',
    book_body: "This is a test element",
    Genre: 'love'
    },
    {
    id:1,
    title: 'Book 1',
    book_body: "This is the 1st element",
    Genre: 'love'
    },
    {
    id:2,
    title: 'Book 2',
    book_body: "This is a 2nd element",
    Genre: 'love'
    },
    {
    id:3,
    title: 'Book 3',
    book_body: "This is a 3d element",
    Genre: 'love'
    }]

  get "/:id/edit" do
    @title = "Edit Book"
    id = params[:id].to_i
    @book = Book.find(id)
    erb :'books/edit'
  end

  get "/" do
    @title = "Books"
    @books = Book.all
    erb :'books/index'
  end

  put "/:id" do
    id = params[:id].to_i
    book = Book.find(id)
    book.title = params[:title]
    book.book_body = params[:book_body]
    book.genre = params[:genre]
    book.save
    redirect "/"
  end

  get "/new" do
    @title = "New book?"
    @book = Book.new
    erb :'books/new'
  end

  get "/:id" do
    id = params[:id].to_i
    @book = Book.find(id)
    erb :'books/show'
  end

  post "/" do
    book = Book.new
    book.title = params[:title]
    book.book_body = params[:book_body]
    book.save
    redirect "/"
  end

  delete ":id" do
    id = params[:id].to_i
    Book.destroy(id)
    redirect "/"
  end

end
# End of BooksController
