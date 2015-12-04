class CreateStudentTerms < ActiveRecord::Migration
  def change
    create_table "student_terms", primary_key: "term_id", force: :cascade do |t|
      t.integer "student_id",               limit: 4,  null: false
      t.integer "sequence_id",              limit: 4,  null: false
      t.float   "min_term_credit",          limit: 53
      t.float   "max_term_credit",          limit: 53
      t.float   "actual_term_credit",       limit: 53, null: false
      t.integer "term_year",                limit: 4,  null: false
      t.integer "term_semester",            limit: 4,  null: false
      t.integer "term_order",               limit: 4,  null: false
      t.boolean "flag_200_levels_complete",            null: false
    end
  end
end
