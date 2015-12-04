class CreateStudentTermSectionRelationships < ActiveRecord::Migration
  def change
    create_table "student_term_section_relationships", id: false, force: :cascade do |t|
      t.integer "term_id",    limit: 4, null: false
      t.integer "section_id", limit: 4, null: false
    end

    add_index "student_term_section_relationships", ["section_id"], name: "section_otm_student_term_section_relationships", using: :btree
  end
end
