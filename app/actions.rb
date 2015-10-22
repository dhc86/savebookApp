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


