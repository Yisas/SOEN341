module SessionsHelper
	 # Logs in the given user.
  def log_in(user)
    session[:studentID] = user.studentID
  end

def current_user
    @current_user ||= Student.find_by(id: session[:studentID])
  end

 def logged_in?
    !current_user.nil?
  end

end
