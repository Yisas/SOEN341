class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :short_name, :limit => 10
      t.string :full_name, :limit => 255
      t.string :description
      t.decimal :credit_value, :precision => 4, :scale => 2
      t.boolean :engineer_required
      
      t.timestamps null: false
    end
  end
end
