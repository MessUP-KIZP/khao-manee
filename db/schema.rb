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

ActiveRecord::Schema.define(version: 2019_11_10_204835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "biographies", force: :cascade do |t|
    t.text "description"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_biographies_on_user_id"
  end

  create_table "feedback", force: :cascade do |t|
    t.integer "score"
    t.text "description"
    t.bigint "project_id"
    t.bigint "user_id_id"
    t.integer "from"
    t.index ["project_id"], name: "index_feedback_on_project_id"
    t.index ["user_id_id"], name: "index_feedback_on_user_id_id"
  end

  create_table "organisation_contacts", force: :cascade do |t|
    t.string "country"
    t.string "city"
    t.string "city_code"
    t.string "street"
    t.bigint "organisation_id"
    t.index ["organisation_id"], name: "index_organisation_contacts_on_organisation_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name", null: false
    t.string "website"
  end

  create_table "organisations_tags", id: false, force: :cascade do |t|
    t.bigint "organisation_id", null: false
    t.bigint "tag_id", null: false
  end

  create_table "organisations_users", id: false, force: :cascade do |t|
    t.bigint "organisation_id", null: false
    t.bigint "user_id", null: false
    t.integer "relation_type"
    t.index ["organisation_id"], name: "index_organisations_users_on_organisation_id"
    t.index ["user_id"], name: "index_organisations_users_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "status"
    t.string "name"
    t.text "description"
    t.integer "score"
    t.bigint "organisation_id"
    t.index ["organisation_id"], name: "index_projects_on_organisation_id"
  end

  create_table "projects_tags", id: false, force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "tag_id", null: false
  end

  create_table "projects_users", id: false, force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.integer "role_type"
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.integer "tag_type"
  end

  create_table "tags_users", id: false, force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "phone_number"
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
