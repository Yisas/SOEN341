class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  add_flash_types :success, :warning, :danger, :info
  protect_from_forgery with: :exception
  include SessionsHelper
  helper_method :nextTerm,:nextTermString

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
      "Summer " + year.to_s
    else if (strInput=="Summer")
           "Fall " + year.to_s
         else if (strInput=="Fall")
                year+=1
                "Winter "+ year.to_s
              end
         end
    end
  end

end
