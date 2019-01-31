module UsersHelper

  def session_login(user_id)
    session[:id] = user_id
  end

  def current_user
    session[:id]
  end

  def log_out_user
    session[:id] = nil
  end
end
