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

ActiveRecord::Schema.define(version: 20150804075631) do

  create_table "departments", force: :cascade do |t|
    t.string   "name",                  limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "dept_img_file_name",    limit: 255
    t.string   "dept_img_content_type", limit: 255
    t.integer  "dept_img_file_size",    limit: 4
    t.datetime "dept_img_updated_at"
  end

  create_table "employee_bank_details", force: :cascade do |t|
    t.integer  "employee_id",    limit: 4
    t.string   "pan_no",         limit: 255
    t.string   "national_id_no", limit: 255
    t.string   "bank_acc_no",    limit: 255
    t.string   "ifsc_code",      limit: 255
    t.string   "bank_name",      limit: 255
    t.string   "branch_address", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "employee_contacts", force: :cascade do |t|
    t.integer  "employee_id",        limit: 4
    t.text     "address",            limit: 65535
    t.text     "current_address",    limit: 65535
    t.string   "home_phone",         limit: 255
    t.string   "mobile_no",          limit: 255
    t.string   "alternet_mobile_no", limit: 255
    t.string   "email",              limit: 255
    t.string   "father_contact_no",  limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "employee_educations", force: :cascade do |t|
    t.integer  "employee_id",         limit: 4
    t.string   "exam_passed",         limit: 255
    t.string   "board_or_university", limit: 255
    t.string   "institut_name",       limit: 255
    t.string   "specialization",      limit: 255
    t.string   "marks",               limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "employee_no",         limit: 255
    t.string   "first_name",          limit: 255
    t.string   "middle_name",         limit: 255
    t.string   "last_name",           limit: 255
    t.date     "date_of_birth"
    t.string   "marital_status",      limit: 255
    t.string   "father_name",         limit: 255
    t.string   "mother_name",         limit: 255
    t.string   "department",          limit: 255
    t.string   "technology",          limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.date     "joining_date"
    t.integer  "department_id",       limit: 4
    t.string   "address",             limit: 255
    t.string   "current_address",     limit: 255
    t.string   "home_phone",          limit: 255
    t.string   "mobile_no",           limit: 255
    t.string   "alternet_mobile_no",  limit: 255
    t.string   "email",               limit: 255
    t.string   "father_contact_no",   limit: 255
    t.string   "exam_passed",         limit: 255
    t.string   "board_or_university", limit: 255
    t.string   "institut_name",       limit: 255
    t.string   "specialization",      limit: 255
    t.string   "marks",               limit: 255
    t.string   "pan_no",              limit: 255
    t.string   "national_id_no",      limit: 255
    t.string   "bank_acc_no",         limit: 255
    t.string   "ifsc_code",           limit: 255
    t.string   "bank_name",           limit: 255
    t.string   "branch_address",      limit: 255
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "resource_id",   limit: 4
    t.string   "resource_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "image_file_name",        limit: 255
    t.string   "image_content_type",     limit: 255
    t.integer  "image_file_size",        limit: 4
    t.datetime "image_updated_at"
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "designation",            limit: 255
    t.string   "contact_no",             limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.integer "role_id", limit: 4
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
