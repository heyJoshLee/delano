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

ActiveRecord::Schema[7.0].define(version: 2024_02_23_143405) do
  create_table "activities", force: :cascade do |t|
    t.string "title"
    t.string "activity_type"
    t.string "status"
    t.string "active_type"
    t.integer "active_id"
    t.date "due_date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "notes"
    t.string "phone"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.integer "rating"
    t.integer "status"
    t.integer "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_businesses_on_organization_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.string "email"
    t.string "phone"
    t.integer "status"
    t.integer "business_id"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "organization_id"
    t.index ["organization_id"], name: "index_contacts_on_organization_id"
  end

  create_table "deals", force: :cascade do |t|
    t.string "name"
    t.string "source"
    t.integer "rating"
    t.integer "status"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "organization_id"
    t.integer "user_id"
    t.integer "value"
    t.integer "priority"
    t.integer "stage"
    t.integer "contact_id"
    t.string "category"
    t.string "deal_type"
    t.date "close_date"
    t.integer "business_id"
    t.index ["organization_id"], name: "index_deals_on_organization_id"
    t.index ["user_id"], name: "index_deals_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.integer "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["organization_id"], name: "index_users_on_organization_id"
  end

end
