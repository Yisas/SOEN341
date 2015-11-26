class Course < ActiveRecord::Base
		validates(:short_name, presence: true, uniqueness: true)
end
