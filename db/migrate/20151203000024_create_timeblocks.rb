class CreateTimeblocks < ActiveRecord::Migration
  def change
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
end
