class CreateStudents < ActiveRecord::Migration
  def change
    create_table "students", primary_key: "student_id", force: :cascade do |t|
      t.string  "name",      limit: 30
      t.integer "studentID", limit: 4
      t.string  "password",  limit: 255, null: false
      t.string  "email",     limit: 255, null: false
    end
  end
end
