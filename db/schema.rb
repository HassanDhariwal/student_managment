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

ActiveRecord::Schema.define(version: 20230607121511) do

  create_table "student_classes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "section_name"
    t.string "teacher_name"
    t.integer "student_range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "grade"
    t.index ["section_name"], name: "index_student_classes_on_section_name", unique: true
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "name"
    t.integer "age"
    t.string "father_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
    t.string "email"
    t.string "blood_group"
  end

end
