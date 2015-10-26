require "json"

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


# Get the page to edit the book
get '/books/:id/edit' do |id|
  id = params[:book_id]
  @book = Book.find(id)
  erb :'books/edit'
end

# # Edit an existing book


# Login page for user
get '/users/login' do
  redirect "/users/#{current_user.id}" if current_user
  erb :'users/login'
end

# Remove session and return to login page
get '/users/logout' do
  session.clear
  redirect "/users/login"
end

# Show a User Profile
get '/users/:id' do
  requestUserId   = params[:id]
  loggedInUserId  = session[:user_id] 
  @user = User.find(requestUserId)
  if loggedInUserId
    isMyProfile = requestUserId == loggedInUserId.to_s
    if isMyProfile
      @lends = Lend.where(borrower_id: session[:user_id], checkin: nil)
      @lend_book_id = @lends.map {|l| l.book_id} if @lends
      erb :'users/profile'
    else
      erb :'users/show'
    end
  else
    erb :'users/show'
  end

end

post '/users/login' do

  @user = User.find_by(email: params[:email], password: params[:password])
  if @user
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    erb :'user/login'
  end
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

get '/books/:isbn/info' do
  #if params[:isbn]
  book_details = Book.find_book_with_isbn(params[:isbn])
  json book_details
  #end
end

post '/books/:id/edit' do
  redirect "/users/login" unless logged_in?
  @book = Book.find(params[:book_id])
  if @book.update(
    title: params[:title],
    author: params[:author],
    isbn: params[:isbn],
    description: params[:description],
    picture_url: params[:url]
  )
  #end
    redirect "/books/#{@book.id}"
  else
    erb :'/books/edit'
  end
end

# Save a new book to database
post '/books' do
  redirect "/users/login" unless logged_in?
  @book = current_user.books.new(
    title: params[:title],
    author: params[:author],
    isbn: params[:isbn],
    description: params[:description],
    picture_url: params[:url]
  )
  #end
  if @book.save
    redirect "/books/#{@book.id}"
  else
    erb :'/books/new'
  end
end

# Create a new request for book
post '/books/:id/request' do |id|
  Request.create(
    book_id: params[:book_id],
    borrower_id: params[:borrower_id],
    owner_id: params[:owner_id]  
  )
  id = params[:book_id]
  redirect "/books/#{id}"
end

# Lend out a book
post '/books/:id/lend' do |id|
  id = params[:book_id]
  request = Request.find(params[:request_id])
  request.update(
    attended_to: true,
    accepted: true
  )
  @book = Book.find(params[:book_id])
  @book.lends.create(
    borrower_id: params[:borrower_id],
    due: params[:due],
    checkout: params[:checkout]
  )
  redirect "/users/#{@book.user_id}"
end

# Deny book request
# using put does not work
post '/books/:id/denied' do |id|
  request = Request.find(params[:request_id])
  request.update(
    attended_to: true
  )
  @book = Book.find(params[:book_id])
  redirect "/users/#{@book.user_id}"
end

# Return book
# using put does not work
post '/books/:id/return' do |id|
  id = params[:book_id]
  if params[:lend_id]
    lend = Lend.find(params[:lend_id])
    lend.update(checkin: params[:checkin])
    lend.save
  end
  redirect "/books/#{id}"
end

# put '/books/:id/lend' do |id|
#   id = params[:book_id]
#   if params[:lend_id]
#     lend = Lend.find(params[:lend_id])
#     lend.update(checkin: params[:checkin])
#     lend.save
#   end
#   redirect "/books/#{id}"
# end

# Show details of a Book
get '/books/:id' do |id|

  redirect "/users/login" unless logged_in?
  @book = Book.find(id)
  erb :'books/show'

  # This feature calculates the distance between current user and book to borrow
  @book = Book.find(params[:id])
  @owner = @book.user
  @a = Geokit::Geocoders::GoogleGeocoder.geocode current_user.address
  @b = Geokit::Geocoders::GoogleGeocoder.geocode @owner.address
  @distance = (@a.distance_to(@b)*100).round / 100.0
  erb :'books/show'
end



# Get the page to edit the book
get '/books/:id/edit' do |id|
  @book = Book.find(id)
  erb :'books/edit'
end

get '/' do
  #will enable or disable login or profile features if logged_in? or not
  if logged_in? 
    redirect "/users/#{session[:user_id]}"
  else
    erb :'/login'
  end

end

get '/login' do
  erb :'/login'
end

post '/books/:id/review' do
  @review = Review.create(
    text: params[:text],
    rating: params[:rating].to_i,
    user_id: params[:current_user],
    book_id: params[:book_id]
    )
  redirect '/books/' + params[:book_id].to_s
end

delete '/delete/review' do
  if current_user
    Review.find(params[:review_id]).destroy
    end
    redirect '/books/' + params[:book_id].to_s 
end



