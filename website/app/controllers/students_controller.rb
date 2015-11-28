class StudentsController < ApplicationController



  def login
  end

  def preferences
    @displayFullPreferencesForm= false
  end

  def processSemesterSelection
    @displayFullPreferencesForm= true
    @semesterSelection= params[:semesterInput]
    render :preferences
    #flash.now[:danger] = "Hi"
  end

end
