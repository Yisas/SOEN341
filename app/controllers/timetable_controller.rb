class TimetableController < ApplicationController



  def read
  end

  def courseDisplayStatic
  end

  def courseDisplay
    #params[:semester] will be set when this controller is being called from the preferences page. Otherwise, default to what was on the
    #session, or the semester after the current date
    if !session[:semester] || !params[:semester].nil?
    session[:semester]= !params[:semester].nil? ? params[:semester][:semesterInput] : nextTerm(DateTime.now())
    end
    session[:course]=nil
    session[:section]=nil
  end

  def processCourseSelection
    session[:course]= params[:courseInput]
    session[:section]= nil
    render :courseDisplay
  end

  def processSectionSelection
    session[:section]=params[:sectionInput]
    @addEvent=true
    render :courseDisplay
  end

  def processTermSelection
    session[:semester]=params[:semesterInput]
    render :courseDisplay
  end

end
