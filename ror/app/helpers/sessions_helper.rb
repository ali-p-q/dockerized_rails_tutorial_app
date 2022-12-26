module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def log_out
      @current_user = nil
      session.delete(:user_id)
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end
end
