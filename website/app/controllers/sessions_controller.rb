class SessionsController < ApplicationController
  def new
  end

  def create
     user = Student.find_by(studentID: params[:session][:studentID])
    if user && user.authenticate(params[:session][:studentID],params[:session][:password])
    	   # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to user
    	   else
      # Create an error message.
      flash.now[:danger] = 'Invalid Student ID/password combination'
      render 'new'
    end
  end

  def destroy
  end
end
