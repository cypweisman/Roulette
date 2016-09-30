get '/login' do
  erb :'/sessions/new'
end

post '/sessions' do
  @user = User.find_by(email: params[:email])

  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "/"
  else
    @errors = ["Incorrect input, please try again."]
    erb :"/sessions/new"
  end
end

# delete '/sessions/logout' do
#   session[:user_id] = nil
#   redirect '/'
# end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
