

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
  #filter with our search conditions here
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

# Edit an existing post
put '/books/:id' do |id|
  @book = Book.find(id)
  if @book.update(params[:post])
    redirect "/books/#{@book.id}"
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


