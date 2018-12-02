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

ActiveRecord::Schema.define(version: 20181202150801) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_units", force: :cascade do |t|
    t.string "unit_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competences", force: :cascade do |t|
    t.string "skill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "job_id"
    t.index ["job_id"], name: "index_competences_on_job_id"
  end

  create_table "deliverables", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divisions", force: :cascade do |t|
    t.string "division_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_families", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "family_name"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "job_name"
    t.integer "sbg_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "job_family_id"
    t.bigint "business_unit_id"
    t.bigint "organizational_unit_id"
    t.bigint "division_id"
    t.bigint "primary_cluster_id"
    t.bigint "secondary_cluster_id"
    t.bigint "work_level_id"
    t.index ["business_unit_id"], name: "index_jobs_on_business_unit_id"
    t.index ["division_id"], name: "index_jobs_on_division_id"
    t.index ["job_family_id"], name: "index_jobs_on_job_family_id"
    t.index ["organizational_unit_id"], name: "index_jobs_on_organizational_unit_id"
    t.index ["primary_cluster_id"], name: "index_jobs_on_primary_cluster_id"
    t.index ["secondary_cluster_id"], name: "index_jobs_on_secondary_cluster_id"
    t.index ["work_level_id"], name: "index_jobs_on_work_level_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string "level_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizational_units", force: :cascade do |t|
    t.string "unit_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "primary_clusters", force: :cascade do |t|
    t.string "cluster_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "scope"
    t.string "objective"
    t.datetime "expected_start_date"
    t.datetime "expected_delivery_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "secondary_clusters", force: :cascade do |t|
    t.string "cluster_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendors", force: :cascade do |t|
    t.string "company_name"
    t.string "phone"
    t.string "email"
    t.string "representative_name"
    t.string "office_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_levels", force: :cascade do |t|
    t.string "level_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "competences", "jobs"
  add_foreign_key "jobs", "business_units"
  add_foreign_key "jobs", "divisions"
  add_foreign_key "jobs", "job_families"
  add_foreign_key "jobs", "organizational_units"
  add_foreign_key "jobs", "primary_clusters"
  add_foreign_key "jobs", "secondary_clusters"
  add_foreign_key "jobs", "work_levels"
end
