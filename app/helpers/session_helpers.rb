helpers do
  def logged_in?
    session[:user_id] != nil
  end

  def current_user
    @cookie_user ||= User.find(session[:user_id]) if logged_in?
  end

  def current_user_id
    current_user.id
  end
end
