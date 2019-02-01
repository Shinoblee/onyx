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

ActiveRecord::Schema.define(version: 2019_02_01_192733) do

  create_table "comments", force: :cascade do |t|
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "costs", force: :cascade do |t|
    t.float "event_cost"
    t.integer "event_id"
    t.integer "part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "design_confirms", force: :cascade do |t|
    t.string "required_design"
    t.string "actual_design"
    t.text "design_comment"
    t.integer "event_id"
    t.integer "part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "event_name"
    t.integer "line"
    t.date "weld_dsps_delivery"
    t.date "weld_delivery"
    t.date "trim_dsps_delivery"
    t.date "trim_delivery"
    t.date "tier3_delivery"
    t.integer "project_id"
    t.integer "plant_id"
    t.string "stamp_weld_mat_target"
    t.string "plastic_mat_target"
    t.string "comp_elect_assy_mat_target"
    t.string "wire_harness_mat_target"
    t.string "cast_machine_mat_target"
    t.string "pipe_tube_mat_target"
    t.string "rubber_metal_mat_target"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "honda_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "plant_id"
    t.string "role"
    t.string "honda_id"
    t.string "group"
    t.index ["email"], name: "index_honda_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_honda_users_on_reset_password_token", unique: true
  end

  create_table "maker_layouts", force: :cascade do |t|
    t.integer "supplier_number"
    t.integer "location_code"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maturation_confirms", force: :cascade do |t|
    t.string "planned_maturation"
    t.string "actual_maturation"
    t.text "maturation_comment"
    t.integer "event_id"
    t.integer "part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string "part_number"
    t.string "part_name"
    t.string "process_1"
    t.string "process_2"
    t.string "process_3"
    t.boolean "color"
    t.integer "makerlayout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string "plant_name"
    t.string "acronym"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer "plant_id"
    t.string "project_code"
    t.integer "model_year"
    t.string "family_code"
    t.text "model_code"
    t.boolean "multiple_dev_flow"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplier_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "makerlayout_id"
    t.index ["email"], name: "index_supplier_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_supplier_users_on_reset_password_token", unique: true
  end

  create_table "tags", force: :cascade do |t|
    t.string "phrase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toolings", force: :cascade do |t|
    t.string "deliver_to"
    t.string "part_type"
    t.string "part_level"
    t.string "commodity"
    t.string "tool_source"
    t.integer "go1_go2_lt"
    t.integer "go2_t1_lt"
    t.integer "t1_t2_lt"
    t.integer "t2_t3_lt"
    t.integer "t3_t4_lt"
    t.integer "t4_linetry_lt"
    t.integer "raw_material_lt"
    t.date "go1_1_target"
    t.date "go1_1_actual"
    t.date "go1_1_design_target"
    t.date "go1_1_correlated"
    t.date "go1_2_target"
    t.date "go1_2_actual"
    t.date "go2_1_actual"
    t.date "go2_2_target"
    t.string "go2_2_actual"
    t.date "go2_2_design_target"
    t.date "go2_2_correlated"
    t.date "go2_3_actual"
    t.string "go1_1_design_number"
    t.string "go1_2_design_number"
    t.string "go2_1_design_number"
    t.string "go2_2_design_number"
    t.string "go2_3_design_change"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
