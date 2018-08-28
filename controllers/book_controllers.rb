class BooksController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, 'views') }
  # set :public_folder, Proc.new { File.join(root, 'public') }

  configure :development do
    register Sinatra::Reloader
  end

  get "/:id/edit" do
    @title = "Edit Book"
    id = params[:id].to_i
    @book = Book.find(id)
    erb :'books/edit'
  end
  # edit the informations

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
    book.images
    book.save
    redirect "/"
  end

  get "/new" do
    @title = "New book?"
    @book = Book.new
    erb :'books/new'
  end
  # Send the information of the form

  get "/:id" do
    id = params[:id].to_i
    @book = Book.find(id)
    erb :'books/show'
  end

  post "/" do
    book = Book.new
    book.title = params[:title]
    book.book_body = params[:book_body]
    book.genre = params[:genre]
    book.images = params[:images]
    book.save
    redirect "/"
  end


  delete "/:id" do
    id = params[:id].to_i
    Book.destroy(id)
    redirect "/"
  end

end
# End of BooksController
