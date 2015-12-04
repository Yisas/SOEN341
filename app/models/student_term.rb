class StudentTerm < ActiveRecord::Base
  belongs_to :student
  has_many :student_term_section_relationships
  has_many :sections, :through => :student_term_section_relationships
end
