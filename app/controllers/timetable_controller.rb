class TimetableController < ApplicationController



  def read
  end

  def courseDisplayStatic
  end

  def courseDisplay
    session[:semester]= params[:semester][:semesterInput]
  end

  def processCourseSelection
    session[:course]= params[:semesterInput]
    render :courseDisplay
  end

  def processSectionSelection
    session[:section]=params[:sectionInput]
    @addEvent=true
    render :courseDisplay
  end

end
