# Returns true if a test user is logged in.
def is_logged_in?
  !session[:user_id].nil?
end