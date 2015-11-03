class Student < ActiveRecord::Base
	validates(:name, presence: true, uniqueness: true)
	validates(:password, presence: true)
	validates(:studentID, presence: true, length: {maximum: 8}, uniqueness: true)

def authenticate(studentID,password)
user=Student.find_by_studentID(studentID)

if user && user.password==password 

	return true

else 

	return false

end

end
end