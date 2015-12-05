module StudentsHelper

  def coursesBySemesterSubmenu(javascriptmethod,inputID,formID)
    @courses= Course.all  #TODO replace this with possible courses
    tmp = ""
    @courses.each do |c|
    tmp += "<li><a tabindex=""-1"" href=\"javascript:" + javascriptmethod + "(\'" + c.course_full_name +  "\',\'" + inputID + "\',\'" + formID + "\')\"> " + c.course_full_name  + "</a></li>"
    end
    tmp.html_safe
  end

  def coursesArray
    coursesArr= []
    @courses= Course.all  #TODO replace this with possible courses

    @courses.each do |c|
      coursesArr.push(c.course_full_name)
    end

    #ruby is stupid about passing to javascript, passing as string and reconverting in javascript
    coursesArr.join(",")
  end



  def sectionsFormCourseSubmenu(course)

    tmp = ""
    Section.where("course_id="+ course.id.to_s).find_each do |s|
      tmp += "<li><a tabindex=""-1"" href=\"javascript:submenuClick(\'" + s.section_name +  "\','sectionInput','sectionSelection')\"> "  + s.section_name + ": " + s.section_timeblock_summary +  "</a></li>"
    end
    tmp.html_safe
  end


end
