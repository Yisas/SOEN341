class TimetableController < ApplicationController



  def read
  end

  def courseDisplayStatic
  end

  def courseDisplay
    session[:semester]= params[:semester][:semesterInput]
    session[:course]=nil
    session[:section]=nil
  end

  def processCourseSelection
    session[:course]= params[:semesterInput]
    session[:section]= nil
    render :courseDisplay
  end

  def processSectionSelection
    session[:section]=params[:sectionInput]
    @addEvent=true
    render :courseDisplay
  end

end
