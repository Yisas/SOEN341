class User
  attr_accessor :student_id, :first_name, :last_name, :email

  def initialize(attributes = {})
    @student_id = attributes[:student_id]
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @email = attributes[:email]
  end

  def test_method
    "This student's name is #{first_name} #{last_name}"
  end
end