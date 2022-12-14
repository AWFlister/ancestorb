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

ActiveRecord::Schema[7.0].define(version: 2022_12_14_055137) do
  create_table "marriage_memberships", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "marriage_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["marriage_id"], name: "index_marriage_memberships_on_marriage_id"
    t.index ["person_id"], name: "index_marriage_memberships_on_person_id"
  end

  create_table "marriages", force: :cascade do |t|
    t.date "marriage_date"
    t.date "termination_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.date "birthdate"
    t.text "address"
    t.integer "birth_order"
    t.boolean "alive"
    t.string "marriage_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "deathdate"
  end

  add_foreign_key "marriage_memberships", "marriages"
  add_foreign_key "marriage_memberships", "people"
end
