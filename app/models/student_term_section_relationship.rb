class StudentTermSectionRelationship < ActiveRecord::Base
  belongs_to :student_term
  belongs_to :section
end
