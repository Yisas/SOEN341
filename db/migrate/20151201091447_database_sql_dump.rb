class DatabaseSqlDump < ActiveRecord::Migration
  def self.up
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
      t.string "short_name",   limit: 10,  null: false
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

    create_table "student_term_section_relationships", id: false, force: :cascade do |t|
      t.integer "term_id",    limit: 4, null: false
      t.integer "section_id", limit: 4, null: false
    end

    add_index "student_term_section_relationships", ["section_id"], name: "section_otm_student_term_section_relationships", using: :btree

    create_table "student_terms", primary_key: "term_id", force: :cascade do |t|
      t.integer "sequence_id",              limit: 4,  null: false
      t.float   "min_term_credit",          limit: 53
      t.float   "max_term_credit",          limit: 53
      t.float   "actual_term_credit",       limit: 53, null: false
      t.integer "term_year",                limit: 4,  null: false
      t.integer "term_semester",            limit: 4,  null: false
      t.integer "term_order",               limit: 4,  null: false
      t.boolean "flag_200_levels_complete",            null: false
    end

    add_index "student_terms", ["sequence_id"], name: "generated_sequence_otm_student_terms", using: :btree

    create_table "students", primary_key: "student_id", force: :cascade do |t|
      t.string   "name",       limit: 30
      t.integer  "studentID",  limit: 4
      t.string "password", limit: 255, null: false
      t.string "email",    limit: 255, null: false
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

  def self.down
    # drop all the tables
  end
end
