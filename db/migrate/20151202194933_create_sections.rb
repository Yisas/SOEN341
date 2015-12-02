class CreateSections < ActiveRecord::Migration
  def change
    create_table "sections", primary_key: "section_id", force: :cascade do |t|
      t.integer "course_id",                 limit: 4,   null: false
      t.string  "section_name",              limit: 150, null: false
      t.integer "program_id_restriction",    limit: 4
      t.string  "section_timeblock_summary", limit: 300, null: false
      t.integer "section_semester",          limit: 4,   null: false
      t.boolean "is_two_semesters_long",                 null: false
    end
  end
end
