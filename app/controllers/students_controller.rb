class StudentsController < ApplicationController



  def login
  end

  def preferences
    @displayFullPreferencesForm=loginCheck
  end

  def processSemesterSelection
    @displayFullPreferencesForm= true
    @semesterSelection= params[:semesterInput]
    render :preferences
  end

end
