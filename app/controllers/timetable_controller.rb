class TimetableController < ApplicationController

  def read
  end

  def courseDisplayStatic
  end

  def courseDisplay

    if loginCheck

    #params[:semester] will be set when this controller is being called from the preferences page. Otherwise, default to what was on the
    #session, or the semester after the current date
    if !session[:semester] || !params[:semester].nil?
    session[:semester]= !params[:semester].nil? ? params[:semester][:semesterInput] : nextTerm(DateTime.now())
    end

    termInitializationHelper

    session[:course]=nil
    session[:section]=nil
      end
  end

  def processCourseSelection
    session[:course]= params[:courseInput]
    session[:section]= nil
    render :courseDisplay
  end

  def processSectionSelection
    session[:section]=params[:sectionInput]

    #create StudentTermSectionRelationship if necessary
    StudentTermSectionRelationship.validateAndCreate(session[:termID],((Section.find_by section_name:session[:section], course_id:(Course.find_by course_full_name: session[:course]).id).id))

    render :courseDisplay
  end

  def processTermSelection
    session[:semester]=params[:semesterInput]
    termInitializationHelper
    render :courseDisplay
  end

  def processEliminateEvent

    params[:clickedEvent].split('|').each do |p|
      @temp=StudentTermSectionRelationship.find_by student_term_id: session[:termID], section_id: (Section.find_by section_name:p.split(',',2)[1], course_id: (Course.find_by short_name: p.split(',',2)[0]).id).id
      if !@temp.nil?
      @temp.destroy
       end
    end
    render :courseDisplay
  end

  def nextSemester
    if session[:semester]
    session[:semester]=nextTermString(session[:semester].split(' ', 2)[0],session[:semester].split(' ', 2)[1].to_i)
    termInitializationHelper
    render :courseDisplay
    end
  end

  def termInitializationHelper
    #create the student_term object if this student does not yet have it, uses has_many relationship
    if ((Student.find_by studentID: session[:studentID]).student_terms.find_by(term_semester_string: session[:semester])).nil?
      (Student.find_by studentID: session[:studentID]).student_terms.create(:term_year => session[:semester].split(' ', 2)[1], :term_semester_string => session[:semester])
    end

    session[:termID] = (Student.find_by studentID: session[:studentID]).student_terms.find_by(term_semester_string: session[:semester]).id
  end


  private :termInitializationHelper

end
