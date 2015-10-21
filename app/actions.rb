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


# Homepage (Root path)
get '/' do
  erb :index
end

get '/tracks' do
  @tracks = Track.includes(:upvotes).group('tracks.id').order('count(upvotes.track_id) DESC').references(:upvotes)
  erb :'tracks/index'
end

get '/users/tracks/new' do
  if current_user.id == nil
    redirect to('/')
  else
    erb :'tracks/new'
  end
end


post '/tracks' do
  @track = Track.new(
    title: params[:title],
    artist: params[:artist],
    url: params[:url]
  )
  @track.user_id = current_user.id
  if @track.save
    redirect '/tracks'
  else
    erb :'tracks/new'
  end
end

get '/users/tracks/new' do
  if current_user.id == nil
    redirect to('/')
  else
    erb :'tracks/new'
  end
end

get '/tracks/:id' do
  redirect '/users/tracks/new' if params[:id] == 'new'
  @track = Track.find params[:id]

  erb :'/tracks/show'
end

# delete '/tracks/:id' do
#   @track = Track.find params[:id]
#   @track.destroy
#   redirect '/tracks'
# end

get '/users/signup' do
  @user = User.new
  erb :'users/signup'
end

get '/users/login' do
  erb :'users/login'
end

get '/users/:id' do
  @user = User.find params[:id]
  erb :'users/show'
end

post '/users' do
  @user = User.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    username: params[:username],
    password: params[:password],
    email: params[:email]
    )
  if @user.save
    session[:user_id] = @user.id
    redirect '/users/' + @user.id.to_s
  else
    erb :'users/signup'
  end
end

post '/users/upvote' do
  track_id = params[:track_id]
  if current_user
    unless current_user.upvotes.find_by(track_id: track_id)
      current_user.upvotes.create(track_id: track_id)
    end
  end
  redirect to('/tracks')
end



post '/users/login' do
  #raise params.inspect to see the info submitted by the user from the get action above
  #user = User.find_by() or User.where().first -- use either or to find user info in database
  @user = User.find_by(username: params[:username], password: params[:password])
  # halt(400) unless logged_in? -- should be used before
  if @user
    session[:user_id] = @user.id
    redirect to("/users/#{@user.id}")
  else
    erb :'user/login'
  end
end

post '/users/logout' do
  session.clear
  redirect to('/')
end





