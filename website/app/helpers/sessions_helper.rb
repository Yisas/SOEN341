module SessionsHelper
	 # Logs in the given user.
  def log_in(user)
    session[:student_id] = user.id
  end
end
