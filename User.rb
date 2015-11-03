class Student
  attr_accessor :name, :studentID , :password

  def initialize(attributes = {})
    @name  = attributes[:name]
    @studentID  = attributes[:studentID]
    @password = attributes[:password]
  end


end