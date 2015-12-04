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

    #create the student_term object if this student does not yet have it, uses has_many relationship
    if ((Student.find_by studentID: session[:studentID]).student_terms.find_by(term_semester_string: session[:semester])).nil?
      (Student.find_by studentID: session[:studentID]).student_terms.create(:term_year => session[:semester].split(' ', 2)[1], :term_semester_string => session[:semester])
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
