class TimetableController < ApplicationController
  def read
  end

  def courseDisplayStatic
  end

  def courseDisplay
    @semesterSelection= params[:semester][:semesterInput]
  end

  def processCourseSelection
    @courseSelection= params[:semesterInput]
    @semesterSelection = @semesterSelection
    render :courseDisplay
    #flash.now[:danger] = "Hi"
  end

end
