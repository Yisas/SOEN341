class StudentsController < ApplicationController



  def login
  end

  def preferences
    if logged_in?
    @displayFullPreferencesForm= false
    else
      redirect_to root_path, danger: "You must log in first to use this function."
      end
  end

  def processSemesterSelection
    @displayFullPreferencesForm= true
    @semesterSelection= params[:semesterInput]
    render :preferences
    #flash.now[:danger] = "Hi"
  end

end
