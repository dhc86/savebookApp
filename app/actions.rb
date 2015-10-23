

helpers do # methods defined here are available in the .erb files, actions.rb and templates in the app

  def logged_in?
    !!current_user
  end

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end
end

# Show a User Profile
get '/users/:id' do |id|
  @user = User.find(id)
  erb :'users/show'
end

# Display all users
get '/users' do
  @users = User.all
  #filter with our search conditions here
  erb :'users/index'
end

get '/books' do
  @books = Book.all
  if params[:search_text] && params[:search_param]
    parameter = params[:search_param].downcase
    case parameter
    when 'title'
    @books = @books.where('title LIKE :text', {text: "%#{params[:search_text]}%"})
    when 'author'
    @books = @books.where('author LIKE :text', {text: "%#{params[:search_text]}%"})
    when 'isbn' 
    @books = @books.where('isbn LIKE :text', {text: "%#{params[:search_text]}%"})
    when '*'
    @books = @books.where('isbn LIKE :text OR author LIKE :text OR title LIKE :text', {text: "%#{params[:search_text]}%"})  
    end
  end
  erb :'books/index'
end

# Renders a fill out form for user to 
get '/books/new' do 
  erb :'books/new'
end

# Save a new book to database
post '/books' do
  # params = {
  #   book: {
  #     title: 'value from input',
  #     author: 'value from textarea'
  #     description: 'value from textarea'
  #     picture_url: ''
  #   }
  # }
  @book = Book.new(params[:book])
  if @book.save
    redirect "/books/#{@book.id}"
  else
    erb :'books/new'
  end
end

# Show a Book
get '/books/:id' do |id|
  @book = Book.find(id)
  erb :'books/show'
end

<<<<<<< HEAD
# Edit an existing post
put '/books/:id' do |id|
  @book = Book.find(id)
  if @book.update(params[:post])
    redirect "/books/#{@book.id}"
=======
# Edit an existing book
put '/books/:id' do |id|
  @book = Book.find(id)
  if @book.update(params[:post])
    redirect "/books/#{@post.id}"
>>>>>>> 4ed2864a7b47e2c013b68b952b0e22a82ec6729c
  else
    erb :'books/edit'
  end
end

get '/' do
  #will enable or disable login or profile features if logged_in? or not
  erb :index
end

get '/login' do
  erb :'/login'
end


