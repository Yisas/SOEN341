class StudentTermSectionRelationship < ActiveRecord::Base
  belongs_to :student_term
  belongs_to :section

  def self.validateAndCreate(term_id,section_id)
    if
    (StudentTermSectionRelationship.find_by :student_term_id =>term_id, :section_id =>section_id).nil?
      StudentTermSectionRelationship.create(student_term_id: term_id, section_id: section_id)
    else
      nil
    end

  end

end

