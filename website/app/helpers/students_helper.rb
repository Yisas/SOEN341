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
