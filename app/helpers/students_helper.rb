module StudentsHelper



  semestersArray= []


  def semesters

    num_of_opt=6
    termString=nextTerm(DateTime.now)
    year= DateTime.now.year.to_i
    tmp = "<li><a tabindex=""-1"" href=\"javascript:semesterSubmenuClick(\'" + termString +  "\')\"> " + termString + "</a></li>"
    num_of_opt-=1

    while num_of_opt>=0 do
      monthString = termString.slice(0..(termString.index(' ')-1))
      termString = nextTermString(monthString,year)

      if (monthString=="Winter")
        year+=1
      end

      tmp += "<li><a tabindex=""-1"" href=\"javascript:semesterSubmenuClick(\'" + termString +  "\')\"> " + termString  + "</a></li>"
      num_of_opt-=1
    end
    tmp.html_safe

  end

  def semestersArray
    semestersArr= []

    num_of_opt=6
    termString=nextTerm(DateTime.now)
    year= DateTime.now.year.to_i
    semestersArr.push(termString)
    num_of_opt-=1

    while num_of_opt>=0 do
      monthString = termString.slice(0..(termString.index(' ')-1))
      termString = nextTermString(monthString,year)

      if (monthString=="Winter")
        year+=1
      end
      semestersArr.push(termString)
      num_of_opt-=1
    end

    #ruby is stupid about passing to javascript, passing as string and reconverting in javascript
    semestersArr.join(",")
  end

  #returns string with the named term (Winter,Summer,Fall) of the following semester
  def nextTerm(input)
    tmpMonth = input.month
    if (tmpMonth >= 1 && tmpMonth <=5)
      "Summer " + input.year.to_s
    else if (tmpMonth >=6 && tmpMonth <=8)
           "Fall " + input.year.to_s
         else if (tmpMonth >=9 && tmpMonth <=12)
                "Winter " + (input.year + 1).to_s
              end
         end
    end
  end


  def coursesBySemesterSubmenu
    @courses= Course.all  #TODO replace this with possible courses
    tmp = ""
    @courses.each do |c|
    tmp += "<li><a tabindex=""-1"" href=\"javascript:semesterSubmenuClick(\'" + c.course_full_name +  "\')\"> " + c.course_full_name  + "</a></li>"
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

  #TODO to_lowercase and error handling if it's gonna be used anywhere else (maybe even move to application controller)
  def nextTermString(strInput,year)
    if strInput=="Winter"
      year+=1
      "Fall " + year.to_s
    else if (strInput=="Fall")
           "Summer " + year.to_s
         else if (strInput=="Summer")
                "Winter "+ year.to_s
              end
         end
    end
  end


end
