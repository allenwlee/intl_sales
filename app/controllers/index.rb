get '/' do
  erb :index
end


get '/login' do
  erb :login
end

post '/login' do
  if @user = User.authenticate(params[:email], params[:password])
    session[:user_id] = @user.id
    erb :profile
  else
    @error_message = "Wrong login or password"
    erb :no_permission
  end
end

get '/user/profile' do
  erb :profile
end

get '/login' do
  erb :login
end

get '/user/create' do
  erb :user_create
end

post '/user/create' do
  @user = User.new(email: params[:email], password: params[:password], username: params[:username])
  @user.save!
  session[:user_id] = @user.id 
  erb :profile
end

get '/logout' do
  session.clear
  redirect '/'
end


