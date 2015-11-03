class Student < ActiveRecord::Base
	validates(:name, presence: true, uniqueness: true)
	validates(:password, presence: true)
	validates(:studentID, presence: true, length: {maximum: 8}, uniqueness: true)
end
