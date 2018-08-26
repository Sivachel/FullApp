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
  end





end
# End of BooksController
