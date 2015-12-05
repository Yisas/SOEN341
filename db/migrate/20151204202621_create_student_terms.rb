class CreateStudentTerms < ActiveRecord::Migration
  def change
    create_table "student_terms", force: :cascade do |t|
      t.integer "student_id",               limit: 4,  null: false
      t.integer "sequence_id",              limit: 4#,  null: false this no longer follows France's schema
      t.float   "min_term_credit",          limit: 53
      t.float   "max_term_credit",          limit: 53
      t.float   "actual_term_credit",       limit: 53
      t.integer "term_year",                limit: 4,  null: false
      t.integer "term_semester",            limit: 4#,  null: false this no longer follows France's schema, but should be switcher back to null one controllers got it handled
      t.string "term_semester_string",      limit: 50,  null: false
      t.integer "term_order",               limit: 4
      t.boolean "flag_200_levels_complete"#,  null: false this no longer follows France's schema
    end
  end
end
