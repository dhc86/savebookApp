

helpers do # methods defined here are available in the .erb files, actions.rb and templates in the app

  

  def logged_in?
    !!current_user
  end

# Remember to change back to session
  def current_user
    # cookies[:user_id] = 1   
    if cookies[:user_id]
      User.find(cookies[:user_id])
    end
  end
end

# Get the page to edit the book
get '/books/:id/edit' do |id|
   # binding.pry
   id = params[:book_id]
   @book = Book.find(id)
   erb :'books/edit'
end

# Edit an existing book
put '/books/:id' do |id|
  @book = Book.find(id)
  if @book.update(params[:post])
    redirect "/books/#{@book.id}"
  else
    erb :'books/edit'
  end
end

# Login page for user
get '/users/login' do
  erb :'users/login'
end

# Show a User Profile
get '/users/:id' do |id|
  @user = User.find(id)
  erb :'users/show'
end



post '/users/login' do
  @user = User.find_by(email: params[:email], password: params[:password])
  # halt(400) unless logged_in? -- should be used before
  if @user
    cookies[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    erb :'user/login'
  end
end

# Display all users
get '/users' do
  @users = User.all
  #filter with our search conditions here
  erb :'users/index'
end

#allows user to all books and then filter or search for them
get '/books' do
  @books = Book.all
  if params[:search_text] && params[:search_param]
    @text = params[:search_text]
    @parameter = params[:search_param].downcase
    case @parameter
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
  if params[:isbn]
    book_details = Book.find_book_with_isbn(params[:isbn])
    if book_details
      @book = Book.new 
      @book.title = book_details[:title]
      @book.author = book_details[:author]
      @book.description = book_details[:description]
      @book.isbn = params[:isbn].to_i
      @book.picture_url = book_details[:picture_url] if book_details[:picture_url]
      @book.user_id = current_user.id
      
    end
    redirect '/books/new' 
  else
    @book = Book.new(
      title: params[:title],
      author: params[:author],
      description: params[:description],
      picture_url: params[:picture_url]
    )
  end
  if @book.save
    redirect "/books/#{@book.id}"
  else
    erb :'/books/new'
  end
end



# Show details of a Book
get '/books/:id' do |id|
  @book = Book.find(id)
  erb :'books/show'
end



# Get the Lend book page
get '/books/:id/lend' do |id|

end




get '/' do
  #will enable or disable login or profile features if logged_in? or not
  erb :index
end

get '/login' do
  erb :'/login'
end


