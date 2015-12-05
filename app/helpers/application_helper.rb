module ApplicationHelper
  def full_title(page_title)
    base_title = "Skynet"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  semestersArray= []

  def semesters(javascriptMethod)
    #takes as input the javascipt method you wish to add to the href of the li hyperlink
    num_of_opt=6
    termString=nextTerm(DateTime.now)
    year= DateTime.now.year.to_i
    tmp = "<li><a tabindex=""-1"" href=\"javascript:"+ javascriptMethod +"(\'" + termString +  "\')\"> " + termString + "</a></li>"
    num_of_opt-=1

    while num_of_opt>=0 do
      monthString = termString.slice(0..(termString.index(' ')-1))
      termString = nextTermString(monthString,year)

      if (monthString=="Winter")
        year+=1
      end

      tmp += "<li><a tabindex=""-1"" href=\"javascript:" + javascriptMethod + "(\'" + termString +  "\')\"> " + termString  + "</a></li>"
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



end
