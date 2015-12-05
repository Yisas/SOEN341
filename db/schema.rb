# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151204211410) do

  create_table "course_coursegroup_relationships", id: false, force: :cascade do |t|
    t.integer "course_id",              limit: 4, null: false
    t.integer "coursegroup_id",         limit: 4, null: false
    t.boolean "course_is_mandatory",              null: false
    t.boolean "course_in_at_least_one"
  end

  create_table "course_keyrings", primary_key: "keyring_id", force: :cascade do |t|
    t.integer "key_course_id", limit: 4, null: false
  end

  add_index "course_keyrings", ["key_course_id"], name: "course_otztm_course_keyrings", using: :btree

  create_table "course_locks", id: false, force: :cascade do |t|
    t.integer "locked_course_id",        limit: 4, null: false
    t.integer "keyring_id",              limit: 4, null: false
    t.boolean "keyring_is_prerequisite",           null: false
  end

  add_index "course_locks", ["keyring_id"], name: "course_locks_oto_course_keyrings", using: :btree

  create_table "coursegroups", primary_key: "coursegroup_id", force: :cascade do |t|
    t.string  "coursegroup_name",               limit: 255, null: false
    t.float   "coursegroup_credit_requirement", limit: 53,  null: false
    t.boolean "is_option",                                  null: false
  end

  create_table "courses", primary_key: "course_id", force: :cascade do |t|
    t.string "short_name",          limit: 10,  null: false
    t.string "course_full_name",    limit: 255, null: false
    t.float  "course_credit_value", limit: 53,  null: false
    t.string "course_description",  limit: 500, null: false
  end

  create_table "generated_sequences", primary_key: "sequence_id", force: :cascade do |t|
    t.integer  "student_id",         limit: 4, null: false
    t.datetime "sequence_timestamp",           null: false
  end

  add_index "generated_sequences", ["student_id"], name: "student_otztm_generated_sequences", using: :btree

  create_table "program_course_relationships", id: false, force: :cascade do |t|
    t.integer "program_id",      limit: 4, null: false
    t.integer "course_id",       limit: 4, null: false
    t.integer "course_priority", limit: 4, null: false
  end

  create_table "program_coursegroup_relationships", id: false, force: :cascade do |t|
    t.integer "program_id",     limit: 4, null: false
    t.integer "coursegroup_id", limit: 4, null: false
  end

  add_index "program_coursegroup_relationships", ["coursegroup_id"], name: "coursegroup_otm_program_coursegroup_relationships", using: :btree

  create_table "programs", primary_key: "program_id", force: :cascade do |t|
    t.string "program_name",               limit: 255, null: false
    t.float  "program_credit_requirement", limit: 53,  null: false
  end

  create_table "sections", primary_key: "section_id", force: :cascade do |t|
    t.integer "course_id",                 limit: 4,   null: false
    t.string  "section_name",              limit: 150, null: false
    t.integer "program_id_restriction",    limit: 4
    t.string  "section_timeblock_summary", limit: 300, null: false
    t.integer "section_semester",          limit: 4,   null: false
    t.boolean "is_two_semesters_long",                 null: false
  end

  create_table "sequence_section_priority", id: false, force: :cascade do |t|
    t.integer "section_id",       limit: 4, null: false
    t.integer "sequence_id",      limit: 4, null: false
    t.integer "section_priority", limit: 4, null: false
  end

  add_index "sequence_section_priority", ["sequence_id"], name: "generated_sequences_otztm_student_section_relationships", using: :btree

  create_table "student_completed_courses", id: false, force: :cascade do |t|
    t.integer "student_id", limit: 4, null: false
    t.integer "course_id",  limit: 4, null: false
    t.boolean "is_exempt",            null: false
  end

  add_index "student_completed_courses", ["course_id"], name: "course_otztm_student_completed_courses", using: :btree

  create_table "student_program_relationships", id: false, force: :cascade do |t|
    t.integer "student_id",               limit: 4,  null: false
    t.integer "program_id",               limit: 4,  null: false
    t.float   "program_credits_complete", limit: 53, null: false
  end

  add_index "student_program_relationships", ["program_id"], name: "program_otm_student_program_relationships", using: :btree

  create_table "student_term_section_relationships", force: :cascade do |t|
    t.integer "student_term_id", limit: 4, null: false
    t.integer "section_id",      limit: 4, null: false
  end

  add_index "student_term_section_relationships", ["section_id"], name: "section_otm_student_term_section_relationships", using: :btree

  create_table "student_terms", force: :cascade do |t|
    t.integer "student_id",               limit: 4,  null: false
    t.integer "sequence_id",              limit: 4
    t.float   "min_term_credit",          limit: 53
    t.float   "max_term_credit",          limit: 53
    t.float   "actual_term_credit",       limit: 53
    t.integer "term_year",                limit: 4,  null: false
    t.integer "term_semester",            limit: 4
    t.string  "term_semester_string",     limit: 50, null: false
    t.integer "term_order",               limit: 4
    t.boolean "flag_200_levels_complete"
  end

  create_table "students", primary_key: "student_id", force: :cascade do |t|
    t.string  "name",      limit: 30
    t.integer "studentID", limit: 4
    t.string  "password",  limit: 255, null: false
    t.string  "email",     limit: 255, null: false
  end

  create_table "timeblocks", primary_key: "timeblock_id", force: :cascade do |t|
    t.integer "section_id",         limit: 4, null: false
    t.integer "timeblock_day",      limit: 4, null: false
    t.integer "timeblock_hour",     limit: 1
    t.integer "timeblock_minute",   limit: 1
    t.integer "timeblock_duration", limit: 2
    t.boolean "loyola_campus",                null: false
    t.integer "timeblock_label",    limit: 1, null: false
  end

end
