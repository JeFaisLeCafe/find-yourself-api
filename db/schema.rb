# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_12_205908) do

  create_table "answers", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "answers_poles", force: :cascade do |t|
    t.integer "Answer_id", null: false
    t.integer "Pole_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Answer_id"], name: "index_answers_poles_on_Answer_id"
    t.index ["Pole_id"], name: "index_answers_poles_on_Pole_id"
  end

  create_table "poles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "poles_specialisations", force: :cascade do |t|
    t.integer "Pole_id", null: false
    t.integer "Specialisation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Pole_id"], name: "index_poles_specialisations_on_Pole_id"
    t.index ["Specialisation_id"], name: "index_poles_specialisations_on_Specialisation_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "specialisations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "answers_poles", "Answers"
  add_foreign_key "answers_poles", "Poles"
  add_foreign_key "poles_specialisations", "Poles"
  add_foreign_key "poles_specialisations", "Specialisations"
end
