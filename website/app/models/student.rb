class Student < ActiveRecord::Base
	validates(:name, presence: true, uniqueness: true)
	validates(:password, presence: true)
	validates(:studentID, presence: true, uniqueness: true)

	has_many :courses, dependent: :destroy

	def authenticate(studentID,password)
		user=Student.find_by_studentID(studentID)

		if user && user.password==password 

			return true

		else 

			return false

		end

	end
end