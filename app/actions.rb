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

get '/books' do
  #@books = Book.all
  #filter with our search conditions here
  erb :'books/index'
end

get '/' do
  #will enable or disable login or profile features if logged_in? or not
  erb :index
end
