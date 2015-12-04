class Section < ActiveRecord::Base
  has_many :student_term_section_relationships
  has_many :student_terms, :through => :student_term_section_relationships
end
