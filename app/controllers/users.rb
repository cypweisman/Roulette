get '/users/new' do
  # @user = User.all
  erb :'/users/new'
end

post '/users' do
  @user = User.new(email: params[:email], username: params[:username], password: params[:password])

  if @user.save
    session[:user_id] = @user.id
    redirect "/events"
  else
    @errors = @user.errors.full_messages
    erb :"/users/new"
  end
end

get '/users/:id' do
  @user = User.find(session[:user_id])
  redirect "/events"
end
